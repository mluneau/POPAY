import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount','submit', 'sliderAmount', 'displayAmount']
  connect() {
  }
  toggleSubmitAmount() {
    this.amountTargets.forEach(element => element.classList.toggle('d-none'))
    this.amountTargets.forEach(element => element.classList.toggle('d-flex'))
    this.submitTarget.classList.toggle('d-none')
    this.submitTarget.classList.toggle('d-flex')
  }

  updateAmount(event) {
    this.displayAmountTargets.forEach(element => element.innerText = this.sliderAmountTarget.value)
  }
}
