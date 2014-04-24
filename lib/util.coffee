module.exports =
  isValidCard: (regex, value) -> !!regex.exec(value)
  isAccepted: (arr, value) -> arr.indexOf(value) > -1
  hasOptions: (options) -> options.accepts && options.accepts.length
