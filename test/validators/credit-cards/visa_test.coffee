h = require("../../helper.coffee")

describe "VISA", ->
  it "expect to return true", ->
    h.testOk("4444444444444448")
    h.testOk("4444424444444440")
    h.testOk("4444414444444441")
    h.testOk("4012888888881881")
    h.testOk("4055011111111111")
    h.testOk("4111111111111111")
    h.testOk("4222222222222")

  describe "VISA Commercial Card", ->
    it "expect to return true", ->
      h.testOk("4110144110144115")

  describe "Visa Corporate Card II", ->
    it "expect to return true", ->
      h.testOk("4114360123456785")

  describe "Visa Purchasing Card III", ->
    it "expect to return true", ->
      h.testOk("4061724061724061")
