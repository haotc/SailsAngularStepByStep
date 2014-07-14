module.exports =
  index: (req, res) ->
    if req.user
      console.log(JSON.stringify(req.user))
      return res.view('main/main', user: req.user)
    return res.view('homepage')