class @User extends Minimongoid
  @_collection: Meteor.users

  @has_and_belongs_to_many: [
    {
      name: 'leagues'
    }
  ]

  @current: ->
    return User.init(User.first(Meteor.userId()))

  defaults: {
    league_ids: []
  }

  username: ->
    if @emails
      return @emails[0].address.split('@')[0]
    else
      return null

  is_in_league: (league_id) ->
    return _.contains @league_ids, league_id

