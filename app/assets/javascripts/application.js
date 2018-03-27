// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require materialize

document.addEventListener('turbolinks:load', () => {
  M.AutoInit();
  M.updateTextFields();

  document.querySelector('#task_details').addEventListener('keypress', (event) => {
    if (event.keyCode == 13 && event.shiftKey) {
      event.preventDefault()
      event.currentTarget.form.submit()
    }
  })
})

const addTaskEvent = (event) => {
  event.preventDefault()
  const form = document.querySelector('#add-form')
  event.currentTarget.style.display = 'none'
  form.style.display = 'block'

  setTimeout(() => {form.style.transform = 'scale(1)'}, 1)
  form.querySelector("input[type='text']").focus()
}

const taskAddButton = (target) => {
  document.querySelector(target).addEventListener('click', addTaskEvent)
}
