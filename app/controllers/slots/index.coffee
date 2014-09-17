`import Ember from 'ember'`

SlotsIndexController = Ember.Controller.extend
  needs: ['application']
  badges: (()->
    badges = @get('controllers.application.badgeCount.slots')
    if Ember.isEmpty(badges) then 0 else badges
  ).property('controllers.application.badgeCount.slots')
  actions:
    doSomething:(type)->
      @get('controllers.application').send('notify', {type: 'message', message: {content: 'Yay, I am notifying', type: type}})
    increaseBadge:()->
      @get('controllers.application').send('notify', {type: 'badge', target: 'slots'})
    emptyBadges:()->
      @get('controllers.application').send('notify', {type: 'badge', target: 'slots', value: 0})

`export default SlotsIndexController`
