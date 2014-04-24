Credit Card Composed Validator
==============================

[![Build Status](https://drone.io/github.com/djalmaaraujo/credit-card-composed-validator/status.png)](https://drone.io/github.com/djalmaaraujo/credit-card-composed-validator/latest)

This is a custom validator (or plugin) for the composed validations library.

This is also a simple and useful repository to use as a example on how to create custom validators for the composed validations library.

# Installation
```
npm install cv-credit-card
```

# How to Use
```javascript
var validations = require('composed-validations');
var ccValidator = require('cv-credit-card')(validations);

// The accepts option is optional.
// If you don't pass, will accept 18 types of validation.
// See the Available Validations below

var validator = ccValidator({accepts: ['visa']});

validator.test("4444444444444448"); // will return 4444444444444448

validator.test("6331101999990016"); // false (this is a switch card test number)

```

# Available Credit Card Validations (18)
* American Express
* VISA
* VISA Commercial Card
* VISA Corporate Card II
* VISA Corporate Card III
* Mastercard
* MasterCard Diners
* MasterCard II
* MasterCard III
* Diners Club
* Discover Network
* Discover Diners
* JCB
* Switch/Solo (Paymentech)
* Union
* Laser
* Dankort
* Insta Payment

# Credit Card Test Numbers
* [https://www.auricsystems.com/support-center/sample-credit-card-numbers/](https://www.auricsystems.com/support-center/sample-credit-card-numbers/)
* [http://en.wikipedia.org/wiki/Credit_card_numbers](http://en.wikipedia.org/wiki/Credit_card_numbers)
* [http://www.worldpay.com/support/kb/bg/testandgolive/tgl5103.html](http://www.worldpay.com/support/kb/bg/testandgolive/tgl5103.html)
* [http://www.paypalobjects.com/en_US/vhelp/paypalmanager_help/credit_card_numbers.htm](http://www.paypalobjects.com/en_US/vhelp/paypalmanager_help/credit_card_numbers.htm)


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

[MIT License](http://djalmaaraujo.mit-license.org)
