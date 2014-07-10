module.exports =
  index: (req, res) ->
    if req.user
      return res.view('main/main')
    return res.view('homepage')