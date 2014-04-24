EXPRESSIONS = require("../card_expressions.coffee")
util        = require("../util.coffee")

isValidCard = util.isValidCard
isAccepted  = util.isAccepted
hasOptions  = util.hasOptions

module.exports = (cv) ->
  (options = {}) ->
    test: (value) ->
      for card, regex of EXPRESSIONS
        if hasOptions(options)
          return value if isValidCard(regex, value) && isAccepted(options.accepts, card)
        else
          return value  if isValidCard(regex, value)

      throw new cv.ValidationError("is not an accepted credit card number", value, this)
