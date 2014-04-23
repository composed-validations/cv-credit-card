composedLib         = require('composed-validations')
ValidationError     = composedLib.ValidationError
CValidator          = require("../../lib/validators/credit_card.coffee")(composedLib)

defaultErrorMessage = "credit card number is not valid"

describe "PresenceValidator", ->
  describe "instanceof", ->
    it "check for CreditCardValidator factory", ->
      expect(typeof CValidator).eq("object")

  describe "Credit Cards tests", ->
    describe "Bad tests", ->
      it "should fail", ->
        expect(-> CValidator.test({})).throw(defaultErrorMessage)
