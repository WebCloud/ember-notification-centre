`import Ember from 'ember'`

Router = Ember.Router.extend
  location: CoffeeTestENV.locationType

Router.map(()->
  @resource('slots',()->
    @route('lobby')
  )
)

`export default Router`
