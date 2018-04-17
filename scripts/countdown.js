import $ from 'zepto'
import moment from 'moment'
import padLeft from 'pad-left'

const COMPONENTS = ['days', 'hours', 'minutes', 'seconds']

function setupCountdown ($e, endDate) {
  const end = moment(endDate, 'YYYY-MM-DD')
  const elements = COMPONENTS.map((name) => ({
    name,
    $: $e.find('.countdown-component.of-' + name + '>code')
  }))

  setInterval(() => {
    const now = moment()
    const dur = moment.duration(end.diff(now))
    elements.forEach((el) => {
      const val = padLeft(dur[el.name](), 2, '0')
      el.$.text(val)
    })
  }, 1000)
}

$(function () {
  $('.countdown').each((i, e) => {
    const $e = $(e)
    const endDate = $e.data('enddate')
    if (endDate) {
      setupCountdown($e, endDate)
    }
  })
})
