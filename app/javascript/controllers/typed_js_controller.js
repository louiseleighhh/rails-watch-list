import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Honestly, same", "Don't worry, we'll make it for you", "I know these are video game images, suck it up"],
      typeSpeed: 50,
      loop: true
    });
  }
}
