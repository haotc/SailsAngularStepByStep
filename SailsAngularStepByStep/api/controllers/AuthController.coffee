passport = require('passport')
module.exports =
  login: (req, res) ->
    res.view 'auth/signin'
    return
  
  process: (req, res) ->
    passport.authenticate('local', (err, user, info) ->
      if err or not user
        res.redirect '/signin'
        return
      req.logIn user, (err) ->
        res.redirect('/signin') if err
        res.redirect '/'
      return
    ) req, res
    return
  
  logout: (req, res) ->
    req.logout()
    res.send 'Signout successful'
    return
	
  _config: {}