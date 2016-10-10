library(readr)

#' read_ECH_raw_data
#'
#' @param my_csv A csv file containing AVAYA ECH CMS R17 raw data exported from the ECH handler script
#'
#' @return The imported raw data as a tbl_df
#' @export
#' @examples
#' my_data = read_ECH_raw_data("data-raw/R17_example")
#' View(my_data)
read_ECH_raw_data <- function(my_csv) {
    my_ECH_raw_data <- read_csv(my_csv, col_names = FALSE, col_types = cols(X10 = col_datetime(format = "%F %T"), X7 = col_datetime(format = "%F %T"),
        X8 = col_datetime(format = "%F %T"), X9 = col_datetime(format = "%F %T")), trim_ws = FALSE)
}
