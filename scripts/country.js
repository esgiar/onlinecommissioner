import $ from 'zepto'

const geoipScript = window.GEOIP_SCRIPT_URL || '/geoip.php'

$(() => {
  $.getJSON(geoipScript, (data) => {
    if (data.location && data.location.calling_code) {
      $('input.autofill-country-code')
        .val((i, val) => val || '+' + data.location.calling_code)
    }
  })
})
