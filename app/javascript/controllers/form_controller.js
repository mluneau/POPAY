import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['amount', 'dueDate', 'submit']
  connect() {
    console.log('Hello!');
  }
}
