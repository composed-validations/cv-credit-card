h         = require("../helper.coffee")
validator = h.validator
message   = h.defaultErrorMessage

describe "Credit Cards tests", ->
  describe "Bad tests", ->
    it "should fail", ->
      expect(-> validator().test("123456")).throw(message)
      expect(-> validator().test("abc")).throw(message)
      expect(-> validator().test("hello")).throw(message)
      expect(-> validator().test("dude")).throw(message)

  describe "Good tests", ->
    it "should pass and return value", ->
      card = "4444444444444448" # using a VISA example

      expect(validator().test(card)).eq card

  describe "Accepted Option", ->
    describe "Not accepted card", ->
      it "should fail for non-accepted card type", ->
        unionCardNumber     = "6271136264806203568"

        creditCardValidator = validator(accepts: ['visa'])

        expect(-> creditCardValidator.test(unionCardNumber)).throw(message)

    describe "Accepted Cards", ->
      it "should pass for a valid number and card type", ->
        newValidator    = h.validator
        visaCardNumber  = "4444444444444448"
        unionCardNumber = "6271136264806203568"

        creditCardValidator = newValidator(accepts: ['visa_master', 'union_pay'])

        expect(creditCardValidator.test(visaCardNumber)).eq visaCardNumber
        expect(creditCardValidator.test(unionCardNumber)).eq unionCardNumber
