# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@stimulus-components/popover", to: "@stimulus-components--popover.js" # @7.0.0
pin "@stimulus-components/dropdown", to: "@stimulus-components--dropdown.js" # @3.0.0
pin "stimulus-use" # @0.52.2
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@stimulus-components/character-counter", to: "@stimulus-components--character-counter.js" # @5.0.0
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "@rails/request.js", to: "@rails--request.js.js" # @0.0.9
pin "sortablejs" # @1.15.2
