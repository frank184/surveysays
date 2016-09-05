# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  $('form').on 'click', '.remove-fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.field').hide()
    event.preventDefault()

  $('form')
  .on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
  .on 'click', '.remove_question', (event) ->
    $question = $(this).closest('.question')
    $input = $question.find('input.question_content')
    unless $input.val() then $question.remove()
  .on 'click', '.remove_answer', (e) ->
    $answer = $(this).closest('.answer')
    $input = $answer.find('input.answer_content')
    unless $input.val() then $answer.remove()
