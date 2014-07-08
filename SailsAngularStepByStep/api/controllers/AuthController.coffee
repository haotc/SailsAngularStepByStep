passport = require('passport')
module.exports =
  signin: (req, res) ->
    res.view 'auth/signin'
    return
  
  processSignin: (req, res) ->
    passport.authenticate('local', (err, user, info) ->
      if err or not user
        res.redirect '/signin'
      req.logIn user, (err) ->
        res.redirect('/signin') if err
        res.redirect '/'
      return
    ) req, res
    return
  
  signout: (req, res) ->
    req.logout()
    res.send 'Signout successful'
    return

  signup: (req, res) ->
    res.view 'auth/signup'

  processSignup: (req, res) ->
    User.create req.params.all(), (err, user) ->
      return next(err) if err
      res.json(user)

  _config: {}