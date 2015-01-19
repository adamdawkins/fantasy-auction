class @League extends Minimongoid
  @_collection: new Meteor.Collection 'leagues'

  @has_and_belongs_to_many: [
    {
      name: 'users'
    }
  ]

  defaults: {
    name: ''
    user_ids: []
 }
