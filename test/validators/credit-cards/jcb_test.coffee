h = require("../../helper.coffee")

describe "JCB", ->
  it "expect to return true", ->
    h.testOk("3530111333300000")
    h.testOk("3528000000000007")
    h.testOk("3566002020360505")

  it "expect to return false", ->
    h.testFail("45087500000000009")
