module.exports = (req, res, next) ->
  return next() if req.isAuthenticated()
  res.send 403, message: 'Unauthorized'