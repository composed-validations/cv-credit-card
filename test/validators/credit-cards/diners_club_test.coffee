h = require("../../helper.coffee")

describe "Diners Club", ->
  it "expect to return true", ->
    h.testOk("30569309025904")
    h.testOk("38520000023237")
    h.testOk("36438936438936")
