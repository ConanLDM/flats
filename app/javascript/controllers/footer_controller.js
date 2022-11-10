import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footer"
export default class extends Controller {
  connect() {
    console.log("connected!")
  }
  updateNavbar() {
    if (window.scrollY <= window.innerHeight) {
      this.element.classList.add("top")
    } else {
      this.element.classList.remove("bottom")
    }
  }
}
