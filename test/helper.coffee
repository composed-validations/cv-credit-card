composedLib = require('composed-validations')
validator   = require("../lib/validators/credit_card.coffee")(composedLib)
errorMessage = "is not an accepted credit card number"

module.exports =
  ValidationError: composedLib.ValidationError
  validator: validator
  defaultErrorMessage: errorMessage
  testOk: (number) ->
    expect((-> validator().test(number))).not.throw()

  testFail: (number) ->
    expect(-> validator().test(number)).throw(errorMessage)
