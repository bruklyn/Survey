<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.31.
 * Time: 14:56
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
session_start();
/*
 * set session objects to participant and survey data to get object values and display results of survey
 */
$participant = $_SESSION["participant_object"];
$survey = $_SESSION["survey_object"];
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
    <div id="main">
        <div id="result_body" class="center">
            <div class="participant_data large">
                Paldies <?php echo $participant->getPersonName()?> !
            </div>
            <div class="survey_data">
                <div class="survey_name medium"> Jūs izpildījāt testu - <?php echo $survey->getSurveyName()?></div>
                <div class="survey_description small">(<?php echo $survey->getSurveyDescription()?>)</div>
            </div>
            <div class="test_result large">Jūs pareizi atbildējāt uz <b><?php echo $survey->getSurveyCorrectAnswers(); ?></b> no <b><?php echo $survey->getSurveyTotalQuestions(); ?></b> jautājumiem!</div>
        </div>
    </div>
    </body>
</html>