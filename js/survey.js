/*
global variables
 */
var ANSWERS = [];
var progresBarWidth = 0;
var temp_answer = [];
var active_button = "none";

/**
 * function to validate if user name is entered, and survey selected
 * @returns {boolean}
 */
function validateFormInput() {
    var username = document.forms["survey_select_form"]["username"].value;
    var selectedSurvey = document.forms["survey_select_form"]["survey_selector"].value;
    if (username === "") {
        document.getElementById("system_messages").innerHTML = "Ievadiet vārdu!";
        document.getElementById("system_messages").classList.remove("disabled");
        document.getElementById("system_messages").classList.add("enabled");
        return false;
    }else if (selectedSurvey === ""){
        document.getElementById("system_messages").innerHTML = "Izvēlieties testu!";
        document.getElementById("system_messages").classList.remove("disabled");
        document.getElementById("system_messages").classList.add("enabled");
        return false;
    }
}

/**
 * function to validate user action, switch button styles and save selected answer to temporary array
 * @param question_id - id of question
 * @param answer - answer value
 * @param key - question counter value(key - to question)
 * @param button_id - id of button to mask or unmask as active
 */
function validateAnswer(question_id, answer, key, button_id) {
    temp_answer = ([question_id, answer]);
    document.getElementById("proceed_to_next_"+key).disabled = false;

    var received_button = "button_"+question_id+"_"+button_id;
    if(active_button === "none"){
        active_button = received_button;
        document.getElementById(received_button).classList.add("active")
    }
    if(received_button !== active_button){
        document.getElementById(active_button).classList.remove("active");
        document.getElementById(received_button).classList.add("active");
        active_button = received_button;
    }
}

/**
 * function to switch questions and move progress bar
 * @param actual_question - question id, used to hide actual and show next
 * @param question_count - total question qount in survey
 */
function switchQuestionBlocks(actual_question, question_count) {
    ANSWERS.push(temp_answer);
    temp_answer=[];

    var actual = document.getElementById("question_body_"+actual_question);
    actual.style.display = "none";
    var element_next = parseInt(actual_question) + 1;
    if (question_count > element_next) {
        var next = document.getElementById("question_body_" + element_next.toString());
        next.style.display = "block";
    }
    else {
        var final = document.getElementById("surveryCompleate");
        final.style.display = "block";
        document.getElementById("answered_survey_questions").value = ANSWERS.toString();
    }

    var progressBar = document.getElementById("progressBar");
    var width = 100/(question_count);
    if(progresBarWidth < 100){
        progresBarWidth += width;
        if(progresBarWidth > 100){
            progresBarWidth = 100;
        }
    }
    progressBar.style.width = progresBarWidth + '%';
}

