import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="onboarding"
export default class extends Controller {
  static targets = [ "firstName", "buttonA1", "buttonA2", "question2", "question2bis", "buttonback3", "buttonB1", "buttonB2", "buttonB1bis", "buttonB2bis", "buttonC1", "buttonC2", "buttonNextStep" ]
  connect() {
    console.log("Yes Sir");
  }

// Dynamic first name retrieval
  firstName(event) {
    let name = user_first_name.value;
    this.firstNameTarget.innerText = name;
  }

// Student quizz
  q1FirstAnswer(event) {
    let firstQuestion = "manual";
    this.buttonA1Target.classList.add("choice-button-selected");
    this.buttonA2Target.classList.add("choice-button-unselected");
    this.question2Target.classList.add("d-none");
    this.question2bisTarget.classList.remove("d-none");
    this.buttonback3Target.href = "#quizz-student-2nd-bis";
  }

  q1SecondAnswer(event) {
    let firstQuestion = "intellectual";
    this.buttonA2Target.classList.add("choice-button-selected");
    this.buttonA1Target.classList.add("choice-button-unselected");
  }

  q2FirstAnswer(event) {
    let secondQuestion = "scientific";
    this.buttonB1Target.classList.add("choice-button-selected");
    this.buttonB2Target.classList.add("choice-button-unselected");
  }

  q2SecondAnswer(event) {
    let secondQuestion = "non-scientific";
    this.buttonB2Target.classList.add("choice-button-selected");
    this.buttonB1Target.classList.add("choice-button-unselected");
  }

  q2BisFirstAnswer(event) {
    let secondQuestion = "outdoor";
    this.buttonB1bisTarget.classList.add("choice-button-selected");
    this.buttonB2bisTarget.classList.add("choice-button-unselected");
  }

  q2BisSecondAnswer(event) {
    let secondQuestion = "indoor";
    this.buttonB2bisTarget.classList.add("choice-button-selected");
    this.buttonB1bisTarget.classList.add("choice-button-unselected");
  }

  q3FirstAnswer(event) {
    let thirdQuestion = "alone";
    this.buttonC1Target.classList.add("choice-button-selected");
    this.buttonC2Target.classList.add("choice-button-unselected");
  }

  q3SecondAnswer(event) {
    let thirdQuestion = "group";
    this.buttonC2Target.classList.add("choice-button-selected");
    this.buttonC1Target.classList.add("choice-button-unselected");
  }

}
