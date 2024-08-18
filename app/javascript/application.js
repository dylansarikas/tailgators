import { Turbo } from "@hotwired/turbo-rails"
import "controllers"

import jquery from "jquery";
window.jQuery = jquery;
window.$ = jquery;
import Rails from "@rails/ujs"
Rails.start();
import "@hotwired/turbo-rails"
