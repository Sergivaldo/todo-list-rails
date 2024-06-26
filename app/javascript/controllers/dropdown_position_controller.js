import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown-position"
export default class extends Controller {
  static targets = ["menu", "list"];

  setPosition(e) {
    // let initTop = 16;
    // let accOffset = 0;
    // let scrollPosition = this.listTarget.scrollTop

    // this.menuTargets.forEach((element, index) => {
    //   accOffset += (this.itemTargets[index].offsetHeight)
    //   if (!element.classList.contains("hidden")) {
    //     let position = accOffset + initTop
    //     element.style.top = (position - scrollPosition) + "px"
    //     return;
    //   }
    // });
    this.menuTargets.forEach((element) => {
      if (!element.classList.contains("hidden")) {
        let position =
          e.target.getBoundingClientRect().y - element.offsetHeight;

        let margin = 32;

        if (position + element.offsetHeight > this.listTarget.offsetHeight) {
          element.style.top = position - element.offsetHeight / 2 + "px";
        } else {
          element.style.top = margin + position + "px";
        }
      }
    });
  }
}
