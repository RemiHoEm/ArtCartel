import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["rootPopup"]
  connect() {}

  // listen click outside event and perform close popup

  // open popup
  openPopup() {
    this.rootPopupTarget.classList.add("active")
  }

  // close popup
}
