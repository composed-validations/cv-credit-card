h         = require("./helper.coffee")
validator = h.validator

describe "PresenceValidator", ->
  describe "instanceof", ->
    it "check for CreditCardValidator factory", ->
      expect(typeof validator()).eq("object")
