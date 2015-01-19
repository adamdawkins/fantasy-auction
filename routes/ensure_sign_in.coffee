Router.onBeforeAction(AccountsTemplates.ensureSignedIn,
  except: ['home', 'atSignIn', 'atSignUp', 'atForgotPassword']
)
