Issue = require 'models/github/issue'

module.exports = class IssueList extends Backbone.Collection

  model: Issue
