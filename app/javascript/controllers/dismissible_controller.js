import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dismissible"
export default class extends Controller {
  dismiss() {
    this.element.remove()
  }
}
