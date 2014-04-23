EXPRESSIONS =
  visa: /^4[0-9]{12}(?:[0-9]{3})?$^5[1-5][0-9]{14}$/
  amex: /^3[47][0-9]{13}$/
  carte_blanche: /^389[0-9]{11}$/
  diners_club: /^3(?:0[0-5]|[68][0-9])[0-9]{11}$/
  discover: /^6(?:011|5[0-9]{2})[0-9]{12}$/
  jcb: /^(?:2131|1800|35\d{3})\d{11}$/
  visa_master: /^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14})$/
  insta_payment: /^63[7-9][0-9]{13}$/
  laser: /^(6304|6706|6709|6771)[0-9]{12,15}$/
  maestro_card: /^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$/
  switch: /^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}$/
  union: /^(62[0-9]{14,17})$/
  korean_local: /^9[0-9]{15}$/
  bcg_global: /^(6541|6556)[0-9]{12}$/

module.exports = (cv) ->
  (options = {}) ->
    test: (value) ->
      valid = false

      for card, regex of EXPRESSIONS
        if regex.exec(value)
          return value

      throw new cv.ValidationError("is not an accepted credit card number", value, this)
