<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.31.
 * Time: 15:49
 */

/**
 * Class Results - class to set result object
 */
class Results {

    /**
     * Result params
     */
    private $participant_id;
    private $survey_id;
    private $survey_question_id;
    private $answer_ok;
    private $wrong_answer_id;

    /**
     * Results constructor.
     * @param $participant_id
     * @param $survey_id
     * @param $survey_question_id
     * @param $answer_ok
     * @param $wrong_answer_id
     */
    public function __construct($participant_id, $survey_id, $survey_question_id, $answer_ok, $wrong_answer_id){
        $this->participant_id = $participant_id;
        $this->survey_id = $survey_id;
        $this->survey_question_id= $survey_question_id;
        $this->answer_ok = $answer_ok;
        $this->wrong_answer_id = $wrong_answer_id;

    }

    /**
     * Result param getters
     */
    public function getParticipantId()
    {
        return $this->participant_id;
    }
    public function getSurveyId()
    {
        return $this->survey_id;
    }
    public function getSurveyQuestionId()
    {
        return $this->survey_question_id;
    }
    public function getAnswerOk()
    {
        return $this->answer_ok;
    }
    public function getWrongAnswerId()
    {
        return $this->wrong_answer_id;
    }
}