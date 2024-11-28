import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["rootPopup", "artist"]
  connect() {
    console.log(this.element.dataset.id)
  }

  // listen click outside event and perform close popup

  // open popup
  openPopup() {
    fetch(`/games_artworks/${this.element.dataset.id}/challenges/new?query=${this.artistTarget.value}`)
      .then(response => response.json)
      .then(data =>
        console.log(data)
      )
      this.rootPopupTarget.classList.add("active");
  // close popup
  }
}
