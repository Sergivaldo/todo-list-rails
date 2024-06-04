import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown-position"
export default class extends Controller {
  static targets = ["menu","list","item"];

  setPosition(e) {
    let initTop = 40;
    let accOffset = 0;
    let scrollPosition = this.listTarget.scrollTop
    this.menuTargets.forEach((element, index) => {
      accOffset += (this.itemTargets[index].offsetHeight)
      if (!element.classList.contains("hidden")) {
        let position = accOffset + initTop
        element.style.top = (position - scrollPosition) + "px"
        return;
      }
    });
  }
}
