<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.08.01.
 * Time: 16:29
 */

/**
 * Class DB_queries - simple class to store db queries extends db class to communicate with db
 */
class DB_queries extends DB{

    /**
     * @return bool|mysqli_result - get all possible tests from db
     */
    public function getAllActiveSurveys(){
        $query = "select * from survey_surveys where survey_active != 0";
        return $this->selectQuery($query);
    }

    /** receive specific test data by its id from database
     * @param $id - id of Survey in db
     * @return bool|mysqli_result - survey data
     */
    public function getSurveyById($id){
        $query = "select * from survey_surveys where id_survey = {$id}";
         return $this->selectQuery($query);
    }

    /** function to get all survey related questions
     * @param $surveyId - survey database id
     * @return bool|mysqli_result - question data
     */
    function getQuestionsForSurvey($surveyId){
        $query = "select * from survey_questions where survey_id = {$surveyId}";
        return $this->selectQuery($query);
    }

    /** function to store participant in database
     * @param $name - name of participant
     * @param $uid - unique php generated user id
     * @return int - value of insert statement
     */
    function createParticipant($name, $uid){
        $query = "insert into survey_participants (participant_name, unique_id) values ('{$name}','{$uid}')";
        return $this->insertQuery($query);
    }

    /** function to get specific user data from database
     * @param $uid - php generated unique id
     * @return bool|mysqli_result - user data from db
     */
    function getParticipant($uid){
        $query = "select * from survey_participants where unique_id = '{$uid}'";
        return $this->selectQuery($query);

    }

    /** Query to select possible answers from answer table
     * @param $category_id - answer category id
     * @return bool|mysqli_result - possible answer data
     */
     function selectPossibleAnswers($category_id){
        $query = "select * from survey_answers where category_id = {$category_id};";
        return $this->selectQuery($query);
    }

    /** function to receive answer id (required to insert survey result)
     * @param $category - category where answer is set
     * @param $name - answer name
     * @return bool|mysqli_result - answer id
     */
    function getAnswerIdByCategoryAndName($category, $name){
        $query = "select id_answers from survey_answers where category_id = {$category} and answer = '{$name}';";
        return $this->selectQuery($query);

    }

    /** function to insert question results to dataase
     * @param $participant_id
     * @param $survey_id
     * @param $survey_question_id
     * @param $answer_ok
     * @param $wrong_answer_id
     * @return int - result of insert statement
     */
    function insertQuestionResult($participant_id, $survey_id, $survey_question_id, $answer_ok, $wrong_answer_id){
        $query = "insert into survey_results (participant_id, survey_id, survey_question_id, answer_ok, wrong_answer_id)
                  values ({$participant_id}, {$survey_id}, {$survey_question_id}, {$answer_ok}, {$wrong_answer_id})";
        return $this->insertQuery($query);
    }


}