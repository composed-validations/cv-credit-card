h          = require("./helper.coffee")
CValidator = h.validator

describe "PresenceValidator", ->
  describe "instanceof", ->
    it "check for CreditCardValidator factory", ->
      expect(typeof CValidator()).eq("object")
