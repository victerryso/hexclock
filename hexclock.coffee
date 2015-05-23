if Meteor.isClient

  Template.body.helpers
    clock: -> Session.get('hex')

  Template.body.rendered = ->
    getTime = ->
      hex = '#' + moment().format 'HHmmss'
      Session.set('hex', hex)
      $('body').velocity(backgroundColor: hex)

    setInterval(getTime, 1000)
