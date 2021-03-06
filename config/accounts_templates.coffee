AccountsTemplates.configure
  
  # Behaviour
  confirmPassword: true
  enablePasswordChange: true
  forbidClientAccountCreation: false
  overrideLoginErrors: true
  sendVerificationEmail: false
  
  # Appearance
  showAddRemoveServices: false
  showForgotPasswordLink: false
  showLabels: true
  showPlaceholders: true
  
  # Client-side Validation
  continuousValidation: false
  negativeFeedback: false
  negativeValidation: true
  positiveValidation: true
  positiveFeedback: true
  showValidating: true
  
  # Privacy Policy and Terms of Use
  privacyUrl: "privacy"
  termsUrl: "terms-of-use"
  
  # Redirects
  homeRoutePath: "/home"
  redirectTimeout: 4000
  
  # Texts
  texts:
    button:
      signUp: "Register Now!"

    socialSignUp: "Register"
    socialIcons:
      "meteor-developer": "fa fa-rocket"

    title:
      forgotPwd: "Recover Your Passwod"
 

AccountsTemplates.configureRoute 'signIn',
  redirect: '/leagues'
