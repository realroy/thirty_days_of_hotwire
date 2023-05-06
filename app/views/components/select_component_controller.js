import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "dropdown",
    "dropdownItem",
    "toggleBtn",
    "chips",
    "hiddenSelect",
    "chipTemplate",
  ];

  connect() {}

  disconnect() {
    document.removeEventListener("click", this.clickAway);
  }

  toggleDropdown = (e) => {
    this.toggleBtnTarget.classList.toggle('rotate-180')
    this.dropdownTarget.classList.toggle("hidden");


    if (e.currentTarget === this.toggleBtnTarget) {
      document.addEventListener("click", this.clickAway);
    } else {
      document.removeEventListener("click", this.clickAway);
    }
  };

  clickAway = (e) => {
    if (this.element.contains(e.target)) {
      return;
    }
    this.dropdownTarget.classList.add("hidden");
  };

  handleClickDropdownItem = (e) => {
    e.stopPropagation();
    // const id = e.currentTarget.id;
    const chip = this.chipTemplateTarget.content.cloneNode(true);
    chip.querySelector("span > span").innerText = e.currentTarget.innerText;
    chip
      .querySelector("span")
      .setAttribute("data-value", e.currentTarget.dataset.value);
    this.chipsTarget.appendChild(chip);
    e.currentTarget.classList.add("hidden");
    // console.log(e.currentTarget.innerText);
    this.toggleDropdown(e);
  };

  removeChip = (e) => {
    const chip = e.currentTarget.parentNode;
    chip.remove();
    const target = this.dropdownItemTargets.find(
      (item) => item.dataset.value === chip.dataset.value
    );
    console.log(this.dropdownItemTargets[0].dataset, chip.dataset);
    target.classList.remove("hidden");
  };
}
