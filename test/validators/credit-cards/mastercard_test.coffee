h = require("../../helper.coffee")

describe "MasterCard", ->
  it "expect to return true", ->
    h.testOk("5500005555555559")
    h.testOk("5555555555555557")
    h.testOk("5454545454545454")
    h.testOk("5555515555555551")
    h.testOk("5405222222222226")
    h.testOk("5478050000000007")
    h.testOk("5111005111051128")
    h.testOk("5112345112345114")

  describe "MasterCard Diners", ->
    it "expect to return true", ->
      h.testOk("36111111111111")

  describe "MasterCard II", ->
    it "expect to return true", ->
      h.testOk("5115915115915118")

  describe "MasterCard III", ->
    it "expect to return true", ->
      h.testOk("4061724061724061")
      h.testOk("5115915115915118")
