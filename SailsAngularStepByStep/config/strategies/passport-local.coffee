passport = require('passport')
LocalStrategy = require('passport-local').Strategy

passport.serializeUser (user, done) ->
  done null, user[0].id

passport.deserializeUser (id, done) ->
  User.findById id, (err, user) ->
    done err, user

passport.use new LocalStrategy (username, password, done) ->
  User.findOne(username: username).done (err, user) ->
    return done(null, err) if err

    if not user
      return done null, false, message: 'Incorrect user'

    if password is not user.password
      return done null, false, message: "Invalid password"
  return

module.exports = express:
  customMiddleware: (app) ->
    console.log "Express middleware for passport"
    app.use passport.initialize()
    app.use passport.session()
    return