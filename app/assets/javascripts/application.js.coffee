# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery-migrate-min
#= require jquery_ujs
#= require jquery.ui.all
#= require plugins/enquire
#= require plugins/jquery.sparkline
#= require plugins/excanvas.compiled
#= require bootstrap
#= require fileinput.jquery
#= require jquery.touchdown
#= require plugins/jquery.uniform
#= require plugins/jquery.tinyscrollbar
#= require jnavigate.jquery
#= require jquery.touchSwipe
#= require plugins/jquery.peity
#= require jquery.flot
#= require jquery.flot.resize
#= require bootstrap-wysihtml5
#= require dataTables/jquery.dataTables
#= require dataTables/jquery.dataTables.bootstrap
#= require chosen-jquery
#= require highcharts
#= require highcharts/highcharts-more
#= require jquery.validate
#= require jquery.validate.additional-methods
#= require fullcalendar
#= require gcal
#= require gritter
#= require raphael
#= require justgage

#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app

#= require scripts

window.App = Ember.Application.create LOG_TRANSITIONS: true
window.App.deferReadiness()

$(window).load ->
  $('#loading').fadeOut()

$ ->
  window.App.advanceReadiness()
  $('body').css('display', 'none')
  $('body').fadeIn(500)
