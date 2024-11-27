import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["popup"];

  connect() {
    console.log("Hello from our Stimulus controller");
  }

  submit(event) {
    this.popupTarget.click();
  }
}
