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
#= require jquery_ujs
#= require jquery.ui.all
#= require plugins/enquire.min
#= require plugins/jquery.sparkline.min
#= require plugins/excanvas.compiled
#= require bootstrap
#= require fileinput.jquery
#= require jquery.touchdown
#= require plugins/jquery.uniform.min
#= require plugins/jquery.tinyscrollbar.min
#= require jnavigate.jquery.min
#= require jquery.touchSwipe.min
#= require plugins/jquery.peity.min
#= require plugins/flot/jquery.flot
#= require plugins/flot/jquery.flot.resize
#= require plugins/datatables/js/jquery.dataTables
#= require scripts
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app
window.App = Ember.Application.create LOG_TRANSITIONS: true
window.App.deferReadiness()

$ ->
  window.App.advanceReadiness()
