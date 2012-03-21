IssueList = require 'collections/github/issues'

apiRoot = 'https://api.github.com'

module.exports = class User extends Backbone.Model

  url: "#{apiRoot}/user"

  initialize: ->

    @on 'change:id', @bootstrap

  bootstrap: =>

    @issues = new IssueList

    @issues.sync = @sync
    @issues.url = "#{apiRoot}/issues"

  #sync: (method, model, options) =>
    #options.success()

  validate: (attrs) ->

    if _.has attrs, 'username'
      return "must provide a username" if _.isEmpty attrs.username

    if _.has attrs, 'password'
      return "must provide a password" if _.isEmpty attrs.password

    return
