import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amountView','commentView', 'sliderAmount', 'displayAmount', 'confirmView', 'inputComment','displayComment', "navArrow"]
  connect() {
  }
  goForward() {
    if (this.amountViewTarget.classList.contains('d-flex')) {
      this.amountViewTarget.classList.replace('d-flex', 'd-none')
      this.commentViewTarget.classList.replace('d-none', 'd-flex')
      this.navArrowTarget.classList.remove('d-none')
    }
    this.updateAmount()
  }


  goBack() {
    if (this.commentViewTarget.classList.contains('d-flex')) {
      this.commentViewTarget.classList.replace('d-flex', 'd-none')
      this.amountViewTarget.classList.replace('d-none', 'd-flex')
      this.navArrowTarget.classList.add('d-none')
    }
  }

  toggleAmountConfirm() {
    this.submitTarget.classList.toggle('d-none')
    this.submitTarget.classList.toggle('d-flex')
    this.confirmTarget.classList.toggle('d-none')
    this.confirmTarget.classList.toggle('d-flex')
  }

  updateAmount() {
    this.displayAmountTargets.forEach(element => element.innerText = this.sliderAmountTarget.value)
  }

  updateComment() {
    this.displayCommentTarget.innerText = this.inputCommentTarget.value
  }

  setAmount(event) {
    this.displayAmountTargets.forEach(element => element.innerText = event.target.dataset.value)
    this.sliderAmountTarget.value = event.target.dataset.value
    this.goForward()
  }
}
