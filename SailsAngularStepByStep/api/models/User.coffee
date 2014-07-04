module.exports = 
  attributes:
    username:
      type: 'string',
      require: true,
      unique: true
    password:
      type: 'string',
      require: true
  toJSON: ->
    obj = @toObject
    delete obj.password
    obj