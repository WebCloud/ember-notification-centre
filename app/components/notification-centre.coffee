`import Ember from 'ember'`

NotificationCentreComponent = Ember.Component.extend
  tagName: 'div'
  classNames: 'alert'.w()
  classNameBindings: 'type'
  attributeBindings: 'role'
  role: 'alert'
  isVisible: (()->
    @get('parentView.controller.isNotificationCentreVisible')
  ).property('parentView.controller.isNotificationCentreVisible')
  message: (()->
    @get('parentView.controller.notificationCentreMessage')
  ).property('parentView.controller.notificationCentreMessage')
  type: (()->
    "alert-#{@get('parentView.controller.notificationCentreMessage.type')}"
  ).property('parentView.controller.notificationCentreMessage')

`export default NotificationCentreComponent`
