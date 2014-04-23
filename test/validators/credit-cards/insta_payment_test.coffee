h = require("../../helper.coffee")

describe "Insta Payment Debit Card", ->
  it "expect to return true", ->
    h.testOk("6370000000000000")
    h.testOk("6390000000000000")
