import $ from 'zepto'

function openModal (e) {
  const id = $(e.target).data('modal')
  const $e = $('#' + id)
  $e.addClass('is-active').find('input[autofocus]').first().get(0).focus()
}

function closeModal (e) {
  $(e.target).closest('.modal').removeClass('is-active')
}

$(() => {
  $('.open-modal').on('click', openModal)
  $('.modal>.modal-close,.modal>.modal-background').on('click', closeModal)
})
