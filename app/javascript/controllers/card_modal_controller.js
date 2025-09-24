import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container"]

  connect() {
    // Auto-focus no primeiro input quando o modal abre
    const firstInput = this.element.querySelector('input[type="text"], textarea')
    if (firstInput) {
      firstInput.focus()
    }
  }

  close() {
    this.element.remove()
  }

  closeOnBackdrop(event) {
    if (event.target === this.element) {
      this.close()
    }
  }

  closeOnEscape(event) {
    if (event.key === "Escape") {
      this.close()
    }
  }

  // Prevent form submission from closing modal on validation errors
  preventClose(event) {
    event.stopPropagation()
  }
}
