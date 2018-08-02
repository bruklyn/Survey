<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.31.
 * Time: 9:05
 */

/**
 * Class Questions - collection class for questions
 */
class Questions {

    /**
     * question object array
     */
    private $questions = array();

    /**
     * function to add question to collection
     * @param $question - question object
     * @param null $key - question object key
     */
    public function addQuestion($question, $key = null){
        if ($key == null) {
            $this->questions[] = $question;
        }
        else {
            $this->questions[$key] = $question;
        }
    }

    /**
     * @return int - object in collection
     */
    public function getLength() {
        return count($this->questions);
    }

    /**
     * @return array of question objects
     */
    public function getQuestions(){
        return $this->questions;
    }

    /** function to return question object
     * @param $key - object key
     * @return question object
     */
    public function getQuestion($key){
        return $this->questions[$key];
    }

}