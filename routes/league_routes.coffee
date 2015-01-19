Router.route('/leagues',
  name: 'leagues.index'
)

Router.route('/',
  action: ->
    Router.go 'leagues'
)

Router.route('/leagues/:_id',
  name: 'leagues.show'
)
