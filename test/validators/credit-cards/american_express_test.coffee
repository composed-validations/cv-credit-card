h = require("../../helper.coffee")

describe "American Express", ->
  it "expect to return true", ->
    h.testOk("371449635398431")
    h.testOk("343434343434343")
    h.testOk("371144371144376")
    h.testOk("341134113411347")
