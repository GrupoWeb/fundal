/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

// require('jquery');
// require('popper.js');
// require('./bootstrap');
// require('pace-progress');
// require('perfect-scrollbar');
// require('@coreui/coreui');
// require('chart.js');


/*****
* CONFIGURATION
*/

//Main navigation
$.navigation = $('nav > ul.nav');

$.panelIconOpened = 'icon-arrow-up';
$.panelIconClosed = 'icon-arrow-down';

//Default colours
$.brandPrimary =  '#20a8d8';
$.brandSuccess =  '#4dbd74';
$.brandInfo =     '#63c2de';
$.brandWarning =  '#f8cb00';
$.brandDanger =   '#f86c6b';

$.grayDark =      '#2a2c36';
$.gray =          '#55595c';
$.grayLight =     '#818a91';
$.grayLighter =   '#d1d4d7';
$.grayLightest =  '#f8f9fa';

'use strict';

/****
* MAIN NAVIGATION
*/

$(document).ready(function($){

  // Add class .active to current link
  $.navigation.find('a').each(function(){

    var cUrl = String(window.location).split('?')[0];

    if (cUrl.substr(cUrl.length - 1) == '#') {
      cUrl = cUrl.slice(0,-1);
    }

    if ($($(this))[0].href==cUrl) {
      $(this).addClass('active');

      $(this).parents('ul').add(this).each(function(){
        $(this).parent().addClass('open');
      });
    }
  });

  // Dropdown Menu
  $.navigation.on('click', 'a', function(e){

    if ($.ajaxLoad) {
      e.preventDefault();
    }

    if ($(this).hasClass('nav-dropdown-toggle')) {
      $(this).parent().toggleClass('open');
      resizeBroadcast();
    }

  });

  function resizeBroadcast() {

    var timesRun = 0;
    var interval = setInterval(function(){
      timesRun += 1;
      if(timesRun === 5){
        clearInterval(interval);
      }
      window.dispatchEvent(new Event('resize'));
    }, 62.5);
  }

  /* ---------- Main Menu Open/Close, Min/Full ---------- */
  $('.sidebar-toggler').click(function(){
    $('body').toggleClass('sidebar-hidden');
    resizeBroadcast();
  });

  $('.sidebar-minimizer').click(function(){
    $('body').toggleClass('sidebar-minimized');
    resizeBroadcast();
  });

  $('.brand-minimizer').click(function(){
    $('body').toggleClass('brand-minimized');
  });

  $('.aside-menu-toggler').click(function(){
    $('body').toggleClass('aside-menu-hidden');
    resizeBroadcast();
  });

  $('.mobile-sidebar-toggler').click(function(){
    $('body').toggleClass('sidebar-mobile-show');
    resizeBroadcast();
  });

  $('.sidebar-close').click(function(){
    $('body').toggleClass('sidebar-opened').parent().toggleClass('sidebar-opened');
  });

  /* ---------- Disable moving to top ---------- */
  $('a[href="#"][data-top!=true]').click(function(e){
    e.preventDefault();
  });

});

/****
* CARDS ACTIONS
*/

$(document).on('click', '.card-actions a', function(e){
  e.preventDefault();

  if ($(this).hasClass('btn-close')) {
    $(this).parent().parent().parent().fadeOut();
  } else if ($(this).hasClass('btn-minimize')) {
    var $target = $(this).parent().parent().next('.card-body');
    if (!$(this).hasClass('collapsed')) {
      $('i',$(this)).removeClass($.panelIconOpened).addClass($.panelIconClosed);
    } else {
      $('i',$(this)).removeClass($.panelIconClosed).addClass($.panelIconOpened);
    }

  } else if ($(this).hasClass('btn-setting')) {
    $('#myModal').modal('show');
  }

});

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

function init(url) {

  /* ---------- Tooltip ---------- */
  $('[rel="tooltip"],[data-rel="tooltip"]').tooltip({"placement":"bottom",delay: { show: 400, hide: 200 }});

  /* ---------- Popover ---------- */
  $('[rel="popover"],[data-rel="popover"],[data-toggle="popover"]').popover();

}



window.Vue = require('vue');
window.axios = require('axios');

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import locale from 'element-ui/lib/locale/lang/es';



Vue.use(ElementUI, { locale });

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('estudiante', require('./componentes/menu/estudiante.vue'));
Vue.component('jornada', require('./componentes/menu/jornada.vue'));
Vue.component('padres', require('./componentes/menu/padres.vue'));
Vue.component('impartidas', require('./componentes/menu/impartidas.vue'));
// Vue.component('edicion-component', require('./components/EdicionPlantilla/edicion.vue').default);
// Vue.component('formulario-component',require('./components/EdicionPlantilla/formularioEdicion.vue').default)
// Vue.component('asignacion-component',require('./components/EdicionPlantilla/AsignarSede.vue').default);
// Vue.component('inbox-component',require('./components/EdicionPlantilla/inbox.vue').default)
// Vue.component('printer-component',require('./components/EdicionPlantilla/printer.vue').default)
// Vue.component('vaciado-component',require('./components/EdicionPlantilla/vaciado.vue').default)
// Vue.component('v-select', vSelect)
// Vue.component('clon-component',require('./components/EdicionPlantilla/clonar.vue').default)
// Vue.component('propano-component',require('./components/Propano/addPropano.vue').default)
// Vue.component('historico-component',require('./components/EdicionPlantilla/historico.vue').default)
// Vue.component('table-category', require('./components/catalogos/category.vue').default)
// Vue.component('content-product', require('./components/catalogos/product.vue').default)
// Vue.component('content-subcategory', require('./components/catalogos/subcategory.vue').default)
// Vue.component('content-measure', require('./components/catalogos/measure.vue').default)
// Vue.component('content-market', require('./components/catalogos/market.vue').default)
// Vue.component('content-local', require('./components/catalogos/local.vue').default)
// Vue.component('content-smarket', require('./components/lugares/SuperMercado.vue').default)
const app = new Vue({
    el: '#main'
});