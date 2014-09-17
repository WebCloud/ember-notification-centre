`import Ember from 'ember'`

NotificationCentreComponent = Ember.Component.extend
  isVisible: (()->
    @get('parentView.controller.isNotificationCentreVisible')
  ).property('parentView.controller.isNotificationCentreVisible')
  message: (()->
    @get('parentView.controller.notificationCentreMessage')
  ).property('parentView.controller.notificationCentreMessage')

`export default NotificationCentreComponent`
