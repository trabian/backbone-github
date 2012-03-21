CommentList = require 'collections/github/comments'

module.exports = class Issue extends Backbone.Model

  initialize: ->

    @comments = new CommentList

    console.log 'issue url', @url

  buildComment: ->

    comment = new @comments.model

    comment.collection = @comments

    comment
