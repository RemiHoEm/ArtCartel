import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flow"
export default class extends Controller {
  static targets = [
    "whereShowBtn",
    "whereCloseBtn",
    "whoShowBtn",
    "whoCloseBtn",
    "whenShowBtn",
    "whenCloseBtn",
  ]
  
  connect() {
    console.log(`Hi from ${this.identifier} controller`);
  }

  start() {
    this.whereShowBtnTarget.click();
  }

  close() {
    this.whenCloseBtnTarget.click();
  }

  goToSecondStep() {
    if (this.hasWhoShowBtnTarget) {
      this.whoShowBtnTarget.click();
    } else {
      this.whenShowBtnTarget.click();
    }
  }

  goToThirdStep() {
    this.whenShowBtnTarget.click();
  }
}
