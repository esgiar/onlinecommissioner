import $ from 'zepto'

$('form.ajax').submit((e) => {
  const $e = $(e.target)
  const url = $e.attr('action')
  const confirm = $e.serializeArray().find((kv) => kv.name === 'confirm_url')
  const confirmURL = confirm && confirm.value

  console.log('form:submit', url)

  $.post(url, $e.serialize(), (res) => {
    console.log('form:response', url, res)

    if (confirmURL) {
      window.location = confirmURL
    }
  })

  e.preventDefault()
  return false
})
