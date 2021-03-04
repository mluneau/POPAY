import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['alert']
  connect() {
    setTimeout(this.hide.bind(this), 5000)
  }

  hide() {
    this.alertTarget.classList.add('d-none');
  }
}
