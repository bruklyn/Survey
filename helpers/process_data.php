<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.31.
 * Time: 17:12
 */

/**
 * Load all application classes dynamically
 * @param $className
 */
function __autoload($className) {
    $file = "../include/".$className.'.php';
    if(file_exists($file)) {
        require_once $file;
    }
}

session_start();

/*
 * check if post data received, if not send data to error page
 */
if(isset($_POST['answer_java_array']))
{
    /*
     * crate answer array from received string
     */
    $array_from_js = explode(",", $_POST["answer_java_array"]);
    $final_array_from_js = array();
    while (count($array_from_js)) {
        list($key,$value) = array_splice($array_from_js, 0, 2);
        $final_array_from_js[$key] = $value;
    }

    /*
     * assign object from session
     */
    $participant = $_SESSION["participant_object"];
    $survey = $_SESSION["survey_object"];
    $questions =  $_SESSION["questions_object"];

    $total_answers = 0;
    $correct_answer_count = 0;

    /*
     * verify participant answer, update counters
     */
    foreach ($final_array_from_js as $key => $value){
        $answer_ok = 0;
        $wrong_answer_id = 0;
        $questions_in_survey = $questions->getQuestion($key);

        if($questions_in_survey->getAnswer() == $value){
            $answer_ok = 1;
            $correct_answer_count ++;
        }

        /*
         * get answer id from database, send user to error page if query fails
         */
        $dbQueries = new DB_queries();
        $wrong_answer_id = mysqli_fetch_assoc($dbQueries->getAnswerIdByCategoryAndName($survey->getSurveyCategoryId(),$value));
        if(count($wrong_answer_id)< 1){
            header("Location: error.php");
        }

        /*
         * create new result object and insert it to database, if query fails send user to error page
         */
        $result = new Results($participant->getPersonsDBId(),$survey->getSurveyId(),$key,$answer_ok,$wrong_answer_id["id_wrong_answers"]);
        $query_result = $dbQueries->insertQuestionResult($result->getParticipantId(),$result->getSurveyId(),$result->getSurveyQuestionId(),$result->getAnswerOk(), $result->getWrongAnswerId());
        if($query_result < 1){
            header("Location: ../results.php");
        }

        /*
         * update counter
         */
        $total_answers++;
    }
    /*
     * update survey object
     */
    $survey->setSurveyCorrectAnswers($correct_answer_count);

    /*
     * unset POST data and send user to result page
     */
    unset($_POST);
    header("Location: ../results.php");
}
else{
    header("Location: error.php");
}