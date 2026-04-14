# Create a data dictionary tibble for a dataset

Builds a tibble with one row per column in `dataset`, containing the
column name, class label, and a placeholder description.

## Usage

``` r
create_dataset_dictionary(dataset)
```

## Arguments

- dataset:

  (`data.frame`) The dataset to document.

## Value

(`tibble`) A tibble with columns `column_name` (`character`), `class`
(`character`), and `description` (`character`).

## Examples

``` r
create_dataset_dictionary(mtcars)
#> # A tibble: 11 × 3
#>    column_name class  description
#>    <chr>       <chr>  <chr>      
#>  1 mpg         double Mpg.       
#>  2 cyl         double Cyl.       
#>  3 disp        double Disp.      
#>  4 hp          double Hp.        
#>  5 drat        double Drat.      
#>  6 wt          double Wt.        
#>  7 qsec        double Qsec.      
#>  8 vs          double Vs.        
#>  9 am          double Am.        
#> 10 gear        double Gear.      
#> 11 carb        double Carb.      
```
