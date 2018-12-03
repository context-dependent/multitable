#' Write a list of tables as a single csv
#'
#' @param dat
#' @param file_path
#'
#' @return
#' @export
#'
#' @examples
multi_table <- function(dat, file_path) {

  out <- function(name, dat) {

    cat(name)
    cat("\n\n")
    write.csv(dat, row.names = FALSE)
    cat("\n\n\n-------------------------------------------\n\n\n")

  }

  sink(file_path)

  names(dat) %>% purrr::map(. %>% out(dat[[.]]))

  sink()
}
