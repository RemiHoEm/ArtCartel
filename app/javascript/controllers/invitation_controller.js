import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="invitation"
export default class extends Controller {
  static targets = ["invitationCode", "playBtn"]
  static values = {
    path: String
  }

  connect() {
    console.log(`Hi from ${this.identifier}`);
  }

  createGame(event) {
    event.preventDefault();
    fetch(this.pathValue, {
      method: 'POST',
      headers: {
        "Accept": "application/json",
        "X-CSRF-Token": document.querySelector("meta[name=csrf-token]").content,
      },
    })
      .then(response => response.json())
      .then(data => {
        this.invitationCodeTarget.innerHTML = `${data.invitation_code}`
        this.playBtnTarget.href = data.challenge_path
      })
  }
}
