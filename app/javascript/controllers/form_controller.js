import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount', 'date', 'submit', 'sliderAmount', 'displayAmount', 'selectDate', 'dateValue', 'spanAmount']
  connect() {
    console.log(this.selectDateTarget)
  }

  goToDate() {
    this.amountTarget.classList.toggle('d-none')
    this.dateTarget.classList.toggle('d-none')
  }

  goToSubmit() {
    this.dateTarget.classList.toggle('d-none')
    this.submitTarget.classList.toggle('d-none')
  }

  updateAmount() {
    this.displayAmountTarget.innerText = this.sliderAmountTarget.value
    this.spanAmountTarget.innerText = this.sliderAmountTarget.value
  }

  updateDate() {

    // this.dateValueTarget.innerText = this.selectDateTarget.value
  }
}
