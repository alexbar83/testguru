//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .
//= require_self


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "utilities/sorting"
import "utilities/checkPasswords"
import "utilities/form_inline"
import "utilities/progress_bar"


Rails.start()
Turbolinks.start()
ActiveStorage.start()
