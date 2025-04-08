import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  submitForm() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 300)
  }
}
