App.ModalController = Ember.ObjectController.extend
  modal: (model) ->
    @set('content', model)
    model.on 'didUpdate', this, ->
      @send 'closeModal'
    model.on 'didCreate', this, ->
      @send 'closeModal'

  submit: ->
    @get('content').save()

  cancel: ->
    @get('content').get('transaction').rollback()
    @send 'closeModal'
