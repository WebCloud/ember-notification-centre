`import Ember from 'ember'`
`import NotificationCentreMixin from 'coffee-test/mixins/notification-centre'`

module 'NotificationCentreMixin'

# Replace this with your real tests.
test 'it works', ->
  NotificationCentreObject = Ember.Object.extend NotificationCentreMixin
  subject = NotificationCentreObject.create()
  ok subject
