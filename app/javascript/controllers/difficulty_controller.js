import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["normal", "easy"];

  connect() {
    // Ajouter les événements aux boutons
    this.normalTarget.addEventListener("click", () => this.activate(this.normalTarget, this.easyTarget));
    this.easyTarget.addEventListener("click", () => this.activate(this.easyTarget, this.normalTarget));
  }

  activate(active, inactive) {
    // Ajouter la classe active au bouton cliqué
    active.classList.add("active");
    inactive.classList.remove("active");
  }
}
