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
