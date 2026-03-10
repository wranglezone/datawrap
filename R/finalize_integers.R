#' Downcast integerish columns to integer
#'
#' Iterates over all columns (or list elements) in `dataset` and converts any
#' non-logical column whose values can all be represented as integers without
#' losing any information to integers. Columns that contain non-integerish data
#' are left unchanged.
#'
#' @param dataset (`data.frame` or `list`) The dataset to process.
#'
#' @returns The `dataset` with all integerish columns converted to integer.
#' @export
#'
#' @examples
#' df <- data.frame(x = c(1.0, 2.0, 3.0), y = c(1.1, 2.2, 3.3))
#' finalize_integers(df)
finalize_integers <- function(dataset) {
  if (!is.null(dataset) && !is.list(dataset)) {
    stbl::pkg_abort(
      "datawrap",
      "{.arg dataset} must be a {.cls data.frame}.",
      c("invalid_dataset", "invalid_argument")
    )
  }
  # TODO: This function isn't enough to warrant adding dplyr to imports, but
  # this should be refactored to use dplyr::mutate, dplyr::across, and
  # dplyr::where when something else necessitates dplyr.
  int_ish_cols <- purrr::map_lgl(dataset, \(x) {
    !is.logical(x) && stbl::is_int_ish(x)
  })
  dataset[int_ish_cols] <- purrr::map(dataset[int_ish_cols], stbl::to_int)
  dataset
}
