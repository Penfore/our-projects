import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "submitButton"]

  connect() {
    this.originalSubmitText = this.submitButtonTarget?.innerText
  }

  submit(event) {
    // Disable submit button to prevent double submission
    if (this.hasSubmitButtonTarget) {
      this.submitButtonTarget.disabled = true
      this.submitButtonTarget.innerText = "Salvando..."
    }
  }

  reset() {
    // Re-enable submit button and reset text
    if (this.hasSubmitButtonTarget) {
      this.submitButtonTarget.disabled = false
      this.submitButtonTarget.innerText = this.originalSubmitText
    }
  }

  // Handle successful form submission
  success() {
    this.reset()
    // Modal will be closed by the turbo stream response
  }

  // Handle form errors
  error() {
    this.reset()
  }
}
