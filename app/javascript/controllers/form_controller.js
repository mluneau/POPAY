import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount','submit', 'sliderAmount', 'displayAmount']
  connect() {
  }
  toggleSubmitAmount() {
    this.amountTargets.forEach(element => element.classList.toggle('d-none'))
    this.submitTarget.classList.toggle('d-none')
  }

  updateAmount(event) {
    this.displayAmountTargets.forEach(element => element.innerText = this.sliderAmountTarget.value)
  }
}
