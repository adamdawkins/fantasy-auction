Meteor.publish 'current_user', ->
  return User._collection.find(
    _id: @userId
  ,
    fields: 
      _id: 1
      league_ids: 1
      emails: 1
  )
