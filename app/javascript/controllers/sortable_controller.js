import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
    static target = ["list"]
    static values = {
        group: String,
        url: String,
        handle: String
    }

    connect() {
        this.sortable = Sortable.create(this.element, {
            group: this.groupValue || "shared",
            animation: 150,
            handle: this.handleValue || null,
            ghostClass: "opacity-50",
            dragClass: "rotate-3",
            onEnd: this.onEnd.bind(this)
        })
    }

    disconnect() {
        if (this.sortable) {
            this.sortable.destroy()
        }
    }

    onEnd(event) {
        const { oldIndex, newIndex, to, from, item } = event

        if (from == to && oldIndex == newIndex) return

        const url = this.urlValue || item.dataset.sortUrl
        const formData = new FormData()

        if (from !== to) {
            // Card moved between lists
            formData.append("list_id", to.dataset.listsId)
            formData.append("position", newIndex + 1)
        } else {
            // Card reordered within same list
            formData.append("position", newIndex + 1)
        }

        fetch(url, {
            method: "PATCH",
            headers: {
                "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
            },
            body: formData
        })
    }
}