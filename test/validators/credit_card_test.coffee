h          = require("../helper.coffee")
CValidator = h.validator
message    = h.defaultErrorMessage

describe "Credit Cards tests", ->
  describe "Bad tests", ->
    it "should fail", ->
      expect(-> CValidator({}).test("123456")).throw(message)
      expect(-> CValidator({}).test("abc")).throw(message)
      expect(-> CValidator({}).test("hello")).throw(message)
      expect(-> CValidator({}).test("dude")).throw(message)

  describe "Good tests", ->
    it "should pass and return value", ->
      card = "4444444444444448" # using a VISA example

      expect(CValidator({}).test(card)).eq card
