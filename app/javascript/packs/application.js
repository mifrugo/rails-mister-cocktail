// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import jquery from 'jquery';
window.$ = window.jquery = jquery;
import 'bootstrap';

import { initSelect2 } from '../components/init_select2';

import { initSweetalert } from '../components/init_sweetalert';

import { showSearch } from '../components/init_search'

import { removeAlert } from '../components/init_alert'

document.addEventListener("turbolinks:load", function () {
  initSelect2();
  showSearch();
  removeAlert();

  document.querySelectorAll('.remove-item').forEach(item => {

    initSweetalert(item, {
      title: "Are you sure?",
      text: "This action cannot be reversed",
      icon: "error",
      buttons: true,
    }, (value) => {
      if (value) {
        let next = item.nextSibling.nextSibling;
        next.click();
      }
    });

  });

  if ( document.body.classList.contains('cocktails-create') ) {
    $('#newCocktail').modal('toggle');
  }

});




// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
