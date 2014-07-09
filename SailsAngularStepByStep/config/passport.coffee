passport = require('passport')
LocalStrategy = require('passport-local').Strategy

passport.serializeUser (user, done) ->
  done null, user.id

passport.deserializeUser (id, done) ->
  User.findById id, (err, user) ->
    done err, user

passport.use new LocalStrategy (username, password, done) ->
  User.findOne username: username, (err, user) ->
    return done(err) if err
    if not user
      return done null, false, message: 'Incorrect user'
    unless password is user.password
      return done null, false, message: 'Invalid password'
    done null, user

module.exports = express:
  customMiddleware: (app) ->
    console.log "Express middleware for passport"
    app.use passport.initialize()
    app.use passport.session()
    return