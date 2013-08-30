App.ModalView = Ember.View.extend
  tagName: 'div'
  classNames: 'modal hide in'.w()
  didInsertElement: ->
    @$().attr('id', 'modal')
    @$().modal
      keyboard: false
      backdrop: 'static'
    @$().modal('show')

  willDestroyElement: ->
    @$().modal('hide')