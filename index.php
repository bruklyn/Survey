<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.30.
 * Time: 15:06
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
 * Start session and get available surveys, for survey selection element
 */
session_start();
$db_queries = new DB_queries();
$available_surveys = mysqli_fetch_all($db_queries->getAllActiveSurveys());
/*
 * Handle error and redirect to error page if data is't in db
 */
if(count($available_surveys)< 1){
        header("Location: helpers/error.php");
}

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
        <div id="survey_selection_page" class="center">
            <div id="system_messages" class="disabled"></div>
                <div class="large">Tests uzdevums</div>
                <form name="survey_select_form" action="survey.php" onsubmit="return validateFormInput()" method="post">
                    <div class="input-field">
                        <input id="username" class="medium" name="username" placeholder="Jūsu vārds" type="text">
                    </div>
                    <select class="medium" name="survey_selector" title="Izvelies testu">
                        <option value=''>Izvelies testu</option>
                        <?php
                            foreach ($available_surveys as $available_survey_arr){
                                echo "<option value='{$available_survey_arr[0]}'>{$available_survey_arr[2]}</option>";
                            }
                        ?>
                    </select>
                    <input class="button orange medium" name="submit" type="submit" value="Sākt testu">
                </form>
        </div>
    </body>
</html>