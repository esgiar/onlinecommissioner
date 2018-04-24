import $ from 'zepto'

const fields = {
  'event-location': $('input[name=event_location]'),
  'event-datetime': $('input[name=event_datetime]')
}

$.each(fields, (name, $input) => {
  $input.val($('input[type=radio]:checked.set-event-fields').data(name))
})

$('input[type=radio].set-event-fields').on('input', (e) => {
  const $radio = $(e.target)
  $.each(fields, (name, $input) => {
    $input.val($radio.data(name))
  })
})
