Comment = require 'models/github/comment'

module.exports = class CommentList extends Backbone.Collection

  model: Comment
