// app/javascript/controllers/sortable_controller.js
import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

// example use:
//
//    <ul data-controller="sortable">
//      <li data-sortable-url="/entries/211/positions"><i data-sortable-handle>(H)</i> one</li>
//      <li data-sortable-url="/entries/222/positions"><i data-sortable-handle>(H)</i> two</li>
//      <li data-sortable-url="/entries/233/positions"><i data-sortable-handle>(H)</i> three</li>
//    </ul>

export default class extends Controller {
  static values = { url: String };

  connect() {
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      ghostClass: "bg-gray-200",
      group:"todo",
      onEnd:function sendData(e) {
        let item = e.item
        let new_list_counter = document.getElementById(`counter_${e.to.id}`)
        let old_list_counter = document.getElementById(`counter_${e.from.id}`)
        const url = item.dataset["url"] 
        put(url, {
          body: JSON.stringify({ position: e.newIndex + 1, status: e.to.id})
        }).then(res => {
            if(res.ok){
              old_list_counter.innerText = parseInt(old_list_counter.innerText) - 1
              new_list_counter.innerText = parseInt(new_list_counter.innerText) + 1
            }
        });
      }
    });
  }

  disconnect() {
    this.sortable.destroy();
  }

}