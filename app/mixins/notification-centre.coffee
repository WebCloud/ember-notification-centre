`import Ember from 'ember'`

NotificationCentreMixin = Ember.Mixin.create
  # the time that the message is going to be visible
  notificationCentreMessageDuration: 1000
  notificationCentreMessage: ''
  isNotificationCentreVisible: (()->
    visible = !Ember.isEmpty(@get('notificationCentreMessage'))
    if visible
      Ember.run.later(()=>
        @set('notificationCentreMessage', '')
      , @get('notificationCentreMessageDuration'))
    visible
  ).property('notificationCentreMessage')
  badgeCount: {}
  actions:
    # notify is going to be de dispatcher for this notification centre
    notify:(params)->
      if params
        # if the intended action is to display a message, grab the message and pass to the notification central to be displayed
        if params.type is 'message'
          @set('notificationCentreMessage', params.message)
        # if the intended action is to display a badge, increment the badgeCount for the intended target
        else
          if(Ember.isNone(params.value))
            @incrementProperty("badgeCount.#{params.target}")
          else
            @set("badgeCount.#{params.target}", params.value)

`export default NotificationCentreMixin`
