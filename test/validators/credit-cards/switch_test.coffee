h = require("../../helper.coffee")

describe "Switch Card", ->
  it "expect to return true", ->
    h.testOk("6331101999990016")

  it "expect to return false", ->
    h.testFail("45087500000000009")
