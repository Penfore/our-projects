import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  connect() {
    this.element.addEventListener("click", this.handleBackdropClick.bind(this))
  }

  close() {
    this.element.remove()
  }

  handleBackdropClick(event) {
    if (event.target === this.element) {
      this.close()
    }
  }

  // Close modal on Escape key
  keydown(event) {
    if (event.key === "Escape") {
      this.close()
    }
  }
}
