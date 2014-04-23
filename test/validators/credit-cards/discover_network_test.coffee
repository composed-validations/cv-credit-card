h = require("../../helper.coffee")

describe "Discover Network", ->
  it "expect to return true", ->
    h.testOk("6011016011016011")
    h.testOk("6011000990139424")
    h.testOk("6011000000000004")
    h.testOk("6011000995500000")
    h.testOk("6500000000000002")

  describe "Discover Diners", ->
    it "expect to return true", ->
      h.testOk("36110361103612")
