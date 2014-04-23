composedLib = require('composed-validations')
validator   = require("../lib/validators/credit_card.coffee")(composedLib)

module.exports =
  ValidationError: composedLib.ValidationError
  validator: validator
  defaultErrorMessage: "credit card number is not valid"
  testOk: (number) ->
    expect((-> validator.test(number))).not.throw()
