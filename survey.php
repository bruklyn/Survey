<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.30.
 * Time: 16:57
 */

/**
 * Load all application classes dynamically
 * @param $className
 */
function __autoload($className) {
    $file = "include/".$className.'.php';
    if(file_exists($file)) {
        require_once $file;
    }
}

/*
 * Check if data received from index page form, if not send user back to index page
 */
if(!isset($_POST["survey_selector"]) && !isset($_POST["username"])){
    header("Location: index.php");
}
session_start();

/*
 * get selected survey data from db, if missing send user to error page
 */
$db_queries = new DB_queries();
$survey_data_from_db = mysqli_fetch_assoc($db_queries->getSurveyById($_POST["survey_selector"]));
if(count($survey_data_from_db)<1){
    header("Location: helpers/error.php");
}

/*
 * construct survey object and add it to session
 */
$survey = new Survey($survey_data_from_db["id_survey"],$survey_data_from_db["id_category"],$survey_data_from_db["survey_name"],$survey_data_from_db["survey_description"],$survey_data_from_db["survey_active"],$survey_data_from_db["survey_created"],$survey_data_from_db["survey_blocked"]);
$_SESSION["survey_object"] = $survey;

/*
 * generate UID and add user to database, send user to error page if query fails
 */
$unique_participant_id = uniqid("UID_");
if($db_queries->createParticipant($_POST["username"],$unique_participant_id) != 1){
    header("Location: helpers/error.php");
}

/*
 * get participant database id, send user to error page if query returns empty array
 */
$participant_db_data = mysqli_fetch_assoc($db_queries->getParticipant($unique_participant_id));
if(count($participant_db_data) < 1){
    header("Location: helpers/error.php");
}

/*
 * Set participant object, add it to session
 */
$participant = new Participants($participant_db_data["id_participant"],$participant_db_data["participant_name"],$participant_db_data["unique_id"]);
$_SESSION["participant_object"] = $participant;

/*
 * Get questions for selected survey, if query fails send user to error page
 */
$questions = new Questions();
$survey_questions = mysqli_fetch_all($db_queries->getQuestionsForSurvey($survey->getSurveyId()));
if(count($survey_questions) < 0){
    header("Location: helpers/error.php");
}
/*
 * set question collection with question objects, pass collection to session
 */
foreach ($survey_questions as $question){
    $questions->addQuestion(new Question($question[0],$question[1], $question[2], $question[3], $question[4]), $question[0]);
}
$_SESSION["questions_object"] = $questions;

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Vienkārša testu sistēma</title>
        <link href="css/main.css" rel="stylesheet" type="text/css">
        <script src="js/survey.js"></script>
    </head>
    <body>
        <div id="survey_page" class="center">
            <?php
            $question_counter = 0;
            foreach ($questions->getQuestions() as $s_question){
                if($question_counter == 0){
                    $show_question = "block";
                }
                else{
                    $show_question = "none";
                }
            ?>
            <div id="question_body_<?php echo $question_counter?>" class="question_block medium" style="display: <?php echo $show_question?>">
            <div class='question_text'><?php echo ($s_question->getQuestion());?></div>
            <div class="answer_block">
                <?php
                /*
                 * for each question generate new random question block
                 */
                $answers = new Answers();
                $answers->buildPossibleAnswerArray($survey->getSurveyCategoryId(),$s_question->getAnswer(),$s_question->getWrongAnswerCount());
                foreach ($answers->getAnswers() as $key => $value){
                    ?>
                    <button id="button_<?php echo $s_question->getDbId();?>_<?php echo $key;?>" class="button answer blue" onclick="validateAnswer('<?php echo $s_question->getDbId();?>','<?php echo $value;?>', '<?php echo $question_counter;?>', '<?php echo $key;?>')"><?php echo $value;?></button>
                <?php
                }
                ?>
            </div>
                <div class="next_question">
                    <button id="proceed_to_next_<?php echo $question_counter;?>" class="orange answer" disabled = "true" onclick="switchQuestionBlocks('<?php echo $question_counter?>','<?php echo $questions->getLength()?>')">Uz nākamo jautājumu</button>
                </div>
            </div>
            <?php
                $question_counter++;
            }
            $survey->setSurveyTotalQuestions($question_counter);
            ?>
            <div id="surveryCompleate" style="display: none">
                <div class="survey_complete large">Tests izpildīts!!!</div>
                <form name="surveyData" method="post" action="helpers/process_data.php">
                    <input id="answered_survey_questions" type="hidden" name="answer_java_array" value="">
                      <input type="submit" class="button orange medium" value="Uzzināt rezultātu">
                </form>
            </div>
            <div id="surveyProgress">
                <div id="progressBar"></div>
            </div>
        </div>
    </body>
</html>