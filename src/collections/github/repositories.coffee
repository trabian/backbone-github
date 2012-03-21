Repository = require 'models/github/repository'

module.exports = class Repositories extends Backbone.Collection

  model: Repository
