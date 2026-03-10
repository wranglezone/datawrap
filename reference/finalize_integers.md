# Downcast integerish columns to integer

Iterates over all columns (or list elements) in `dataset` and converts
any non-logical column whose values can all be represented as integers
without losing any information to integers. Columns that contain
non-integerish data are left unchanged.

## Usage

``` r
finalize_integers(dataset)
```

## Arguments

- dataset:

  (`data.frame`, `list`, or `NULL`) The dataset to process.

## Value

The `dataset` with all integerish columns converted to integer (or
`NULL` if `dataset` is `NULL`).

## Examples

``` r
df <- data.frame(x = c(1.0, 2.0, 3.0), y = c(1.1, 2.2, 3.3))
finalize_integers(df)
#>   x   y
#> 1 1 1.1
#> 2 2 2.2
#> 3 3 3.3
```
