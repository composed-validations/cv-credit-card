EXPRESSIONS = require('../card_expressions.coffee')

module.exports = (cv) ->
  (options = {}) ->
    test: (value) ->
      valid = false

      for card, regex of EXPRESSIONS
        if regex.exec(value)
          return value

      throw new cv.ValidationError("is not an accepted credit card number", value, this)
