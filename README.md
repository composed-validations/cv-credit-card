# Credit Card Composed Validator

This is a custom validator (or plugin) for the composed validations library.

This is also a simple and useful repository to use as a example on how to create custom validators for the composed validations library.


# Available Validations

* Visa
* MasterCard
* American Express
* Diners Club
* Discover
* and JCB cards:

# Credit Card Test Numbers
We used this table: [https://www.auricsystems.com/support-center/sample-credit-card-numbers/](https://www.auricsystems.com/support-center/sample-credit-card-numbers/)


# Credit Card Regex Used

## Visa Card

```^4[0-9]{12}(?:[0-9]{3})?$^5[1-5][0-9]{14}$```

## Amex Card
```^3[47][0-9]{13}$```

## Carte Blanche Card
```^389[0-9]{11}$```

## Diners Club Card
```^3(?:0[0-5]|[68][0-9])[0-9]{11}$```

## Discover Card
```^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$```

## JCB Card
```^(?:2131|1800|35\d{3})\d{11}$```

## Visa Master Card
```^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14})$```

## Insta Payment Card
```^63[7-9][0-9]{13}$```

## Laser Card
```^(6304|6706|6709|6771)[0-9]{12,15}$```

## Maestro Card
```^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$```

## Solo Card
```^(6334|6767)[0-9]{12}|(6334|6767)[0-9]{14}|(6334|6767)[0-9]{15}$```

## Switch Card
```^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}$```

## Union Pay Card
```^(62[0-9]{14,17})$```

## KoreanLocalCard
```^9[0-9]{15}$```

## BCGlobal
```^(6541|6556)[0-9]{12}$```
