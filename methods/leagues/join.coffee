Meteor.methods(
  'join_league': (league_id) ->
    check league_id, String
    check Meteor.userId(), String

    console.log "join_league"
    console.log "join_league: league_id: #{league_id}"
    console.log "join_league: user_id: #{Meteor.userId()}"

    League._collection.update(
      _id: league_id
    ,
      $addToSet:
        user_ids: Meteor.userId()
    )

    User._collection.update(
      _id: Meteor.userId()
    ,
      $addToSet:
        league_ids: league_id
    )
)
