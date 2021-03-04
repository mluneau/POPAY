import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['alert']
  connect() {
    console.log(this.alertTarget)
    setTimeout(this.hide.bind(this), 3000)
  }

  hide() {
    this.alertTarget.classList.add('d-none');
  }
}
