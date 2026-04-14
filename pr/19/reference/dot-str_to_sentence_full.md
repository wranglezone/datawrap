# Convert a string to a full sentence

Convert a string to a full sentence

## Usage

``` r
.str_to_sentence_full(string, locale = "en")
```

## Arguments

- string:

  Input vector. Either a character vector, or something coercible to
  one.

- locale:

  Locale to use for comparisons. See
  [`stringi::stri_locale_list()`](https://rdrr.io/pkg/stringi/man/stri_locale_list.html)
  for all possible options. Defaults to "en" (English) to ensure that
  default behaviour is consistent across platforms.

## Value

(`character`) The input string(s) converted to sentence case with a
trailing period.
