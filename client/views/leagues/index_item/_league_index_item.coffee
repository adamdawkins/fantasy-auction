Template.LeagueIndexItem.helpers(
  'user_is_in_league': ->
    return User.current().is_in_league @_id
)

Template.LeagueIndexItem.events(
  'click .join.button': (event, template) ->
    event.preventDefault()
    league_name = @name
    Meteor.call('join_league', @_id, (error) ->
      if error
        return toastr.error error, "something went wrong:"
      else
        toastr.success "You've joined #{league_name}!"
    )
)
