<?php
/**
 * Created by PhpStorm.
 * User: Ikars-UVS
 * Date: 2018.07.31.
 * Time: 10:10
 */

/**
 * Class Answers - basic answer construction class, extends db_queries class to collect possible answers
 */

class Answers extends DB_queries {

    private $answers = array();
    private $answer_count;

    /**
     * answer construction function
     * @param $answer_category - category from which answers should be taken
     * @param $answer - correct answer for question
     * @param $answer_count - answer count to be set in answer array
     */
    function buildPossibleAnswerArray($answer_category, $answer, $answer_count)
    {

        $this->answer_count = $answer_count;
        $answerArray = array();

        while (count($answerArray)< $answer_count) {
            $w_answers = mysqli_fetch_all($this->selectPossibleAnswers($answer_category));
            if (count($w_answers) < 1) {
                header("Location: helpers/error.php?error=db");
            }
            foreach ($w_answers as $posible_answer) {
                array_push($answerArray, $posible_answer[2]);
            }
        }
        shuffle($answerArray);
        $answerArray = array_slice($answerArray, 0, $answer_count);


        if(!in_array($answer, $answerArray)){
            $answerArray = array_slice($answerArray, 0, $answer_count-1);
            array_push($answerArray,$answer);
        }
        shuffle($answerArray);
        $this->answers = $answerArray;
    }

    /**
     * @return array - possible answer array
     */
    public function getAnswers(){
        return $this->answers;
    }


}