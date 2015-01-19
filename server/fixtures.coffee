Meteor.startup(->
  if League.count() is 0
    League.create(
      name: "#{Fake.word()} League"
    )
  
  if User.count() < 5
    for i in [1..5]
      user = Fake.user(
        fields: [
          'email'
        ]
      )
    Accounts.createUser(
      email: user.email
      password: 'password'
    )
)
