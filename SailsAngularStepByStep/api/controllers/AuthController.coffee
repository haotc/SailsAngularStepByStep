passport = require('passport')
module.exports =
  signin: (req, res) ->
    res.view 'auth/signin'
    return
  
  processSignin: (req, res) ->
    passport.authenticate('local', (err, user, info) ->
      if err or not user
        return res.view('auth/signin', message:'failed')
      req.logIn user, (err) ->
        return res.view('auth/signin', message:'failed') if err
        res.redirect '/'
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