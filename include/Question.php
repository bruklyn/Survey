<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.08.01.
 * Time: 12:19
 */

/**
 * Class Question
 */
class Question{

    /**
     * private params
     */
    private $db_id;
    private $survey_id;
    private $question;
    private $answer;
    private $wrong_answer_count;
    private $media;

    /**
     * Question constructor.
     * @param $db_id - id in database
     * @param $survey_id - survey id, to which this question is assigned
     * @param $question - question text
     * @param $answer - correct answer
     * @param $wrong_answer_count - count of possible answers
     * @param null $media - path to question image, if required
     */
    function __construct($db_id,$survey_id,$question,$answer,$wrong_answer_count,$media = null){
        $this->db_id = $db_id;
        $this->survey_id = $survey_id;
        $this->question = $question;
        $this->answer = $answer;
        $this->wrong_answer_count = $wrong_answer_count;
        $this->media = $media;
    }

    /**
     * class parameter getters
     */
    public function getDbId()
    {
        return $this->db_id;
    }
    public function getSurveyId()
    {
        return $this->survey_id;
    }
    public function getQuestion()
    {
        return $this->question;
    }
    public function getAnswer()
    {
        return $this->answer;
    }
    public function getWrongAnswerCount()
    {
        return $this->wrong_answer_count;
    }
    public function getMedia()
    {
        return $this->media;
    }
}