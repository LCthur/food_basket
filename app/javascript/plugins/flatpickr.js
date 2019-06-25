import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
require("flatpickr/dist/themes/airbnb.css");


flatpickr(".datepicker", {
  "locale": French,
  altInput: true,
  enableTime: true,
  minDate: "today",
  time_24hr: true,
  minTime: "06:00",
  maxTime: "22:00",
  altFormat: "l d F Y, H:i\\"
})
