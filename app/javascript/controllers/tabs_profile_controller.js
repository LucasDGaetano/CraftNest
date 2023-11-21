import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs-profile"
export default class extends Controller {
  connect() {
    console.log("Hello");
  }
}
