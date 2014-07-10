module.exports = (req, res, next) ->
  return next() if not req.isAuthenticated()
  return res.redirect('/')