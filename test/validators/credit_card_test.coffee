composedLib         = require('composed-validations')
ValidationError     = composedLib.ValidationError
CValidator          = require("../../lib/validators/credit_card.coffee")(composedLib)
defaultErrorMessage = "credit card number is not valid"

testOk = (number) ->
  expect((-> CValidator.test(number))).not.throw()

describe "PresenceValidator", ->
  describe "instanceof", ->
    it "check for CreditCardValidator factory", ->
      expect(typeof CValidator).eq("object")

  describe "Credit Cards tests", ->
    describe "Bad tests", ->
      it "should fail", ->
        expect(-> CValidator.test("123456")).throw(defaultErrorMessage)

    describe "Valid Cards", ->
      describe "American Express", ->
        it "expect to return true", ->
          testOk("371449635398431")
          testOk("343434343434343")
          testOk("371144371144376")
          testOk("341134113411347")

      describe "VISA", ->
        it "expect to return true", ->
          testOk("4444444444444448")
          testOk("4444424444444440")
          testOk("4444414444444441")
          testOk("4012888888881881")
          testOk("4055011111111111")
          testOk("4111111111111111")
          testOk("4222222222222")

        describe "VISA Commercial Card", ->
          it "expect to return true", ->
            testOk("4110144110144115")

        describe "Visa Corporate Card II", ->
          it "expect to return true", ->
            testOk("4114360123456785")

        describe "Visa Purchasing Card III", ->
          it "expect to return true", ->
            testOk("4061724061724061")

      describe "MasterCard", ->
        it "expect to return true", ->
          testOk("5500005555555559")
          testOk("5555555555555557")
          testOk("5454545454545454")
          testOk("5555515555555551")
          testOk("5405222222222226")
          testOk("5478050000000007")
          testOk("5111005111051128")
          testOk("5112345112345114")

        describe "MasterCard Diners", ->
          it "expect to return true", ->
            testOk("36111111111111")

        describe "MasterCard II", ->
          it "expect to return true", ->
            testOk("5115915115915118")

        describe "MasterCard III", ->
          it "expect to return true", ->
            testOk("4061724061724061")
            testOk("5115915115915118")

      describe "Diners Club", ->
        it "expect to return true", ->
          testOk("30569309025904")
          testOk("38520000023237")
          testOk("36438936438936")

      describe "Discover Network", ->
        it "expect to return true", ->
          testOk("6011016011016011")
          testOk("6011000990139424")
          testOk("6011000000000004")
          testOk("6011000995500000")
          testOk("6500000000000002")

        describe "Discover Diners", ->
          it "expect to return true", ->
            testOk("36110361103612")

      # describe "JCB", ->
      #   it "expect to return true", ->
      #     testOk("3566003566003566")
      #     testOk("3528000000000007")
