module.exports = 
  attributes:
    username:
      type: 'string',
      required: true,
      unique: true
    password:
      type: 'string',
      required: true

  toJSON: ->
    obj = @toObject
    delete obj.password
    obj