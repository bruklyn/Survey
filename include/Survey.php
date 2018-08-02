<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.30.
 * Time: 14:19
 */


/**
 * Class Survey:
 * Class to keep all survey data
 */
class Survey {

    /**
     * survey params
     */
    private $db_id;
    private $category_id;
    private $name;
    private $description;
    private $is_active;
    private $creation_timestamp;
    private $blocked_timestamp;
    private $total_questions;
    private $correct_answers;

    /**
     * Survey constructor.
     * @param $db_id - survey database id
     * @param $category_id - category id to which this survey is assigned
     * @param $name - survey name
     * @param $description - survey description
     * @param $is_active - value of 0 - disabled; 1 - enabled
     * @param $creation_timestamp - timestamp when survey was created
     * @param $blocked_timestamp - timestamp when survey was blocked
     */
    public function __construct($db_id, $category_id, $name, $description, $is_active, $creation_timestamp,$blocked_timestamp ){
        $this->db_id = $db_id;
        $this->category_id = $category_id;
        $this->name = $name;
        $this->description = $description;
        $this->is_active = $is_active;
        $this->creation_timestamp = $creation_timestamp;
        $this->blocked_timestamp = $blocked_timestamp;
    }

    /**
     * survey param getters
     */
    public function getSurveyId(){
        return $this->db_id;
    }
    public function getSurveyCategoryId(){
        return $this->category_id;
    }
    public function getSurveyName(){
        return $this->name;
    }
    public function getSurveyDescription(){
        return $this->description;
    }
    public function getSurveyIsActive(){
        return $this->is_active;
    }
    public function getSurveyCreationTimestamp(){
        return $this->creation_timestamp;
    }
    public function getSurveyBlockedTimestamp(){
        return $this->blocked_timestamp;
    }
    public function getSurveyTotalQuestions(){
        return $this->total_questions;
    }
    public function getSurveyCorrectAnswers(){
        return $this->correct_answers;
    }

    /** Sets total questios in survey parameters to object
     * @param $question_count
     */
    public function setSurveyTotalQuestions($question_count){
        $this->total_questions = $question_count;
    }

    /** Sets correct answer count
     * @param $correct_answer_count
     */
    public function setSurveyCorrectAnswers($correct_answer_count){
        $this->correct_answers = $correct_answer_count;
    }
}