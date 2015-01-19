@LeaguesIndexController = RouteController.extend(
  waitOn: ->
    Meteor.subscribe 'current_user'
  data: ->
    return {
      leagues: League.where()
    }
)
