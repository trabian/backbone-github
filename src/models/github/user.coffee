module.exports = class User extends Backbone.Model

  sync: (method, model, options) =>
    options.success()

  validate: (attrs) ->

    if _.has attrs, 'username'
      return "must provide a username" if _.isEmpty attrs.username

    if _.has attrs, 'password'
      return "must provide a password" if _.isEmpty attrs.password

    return
