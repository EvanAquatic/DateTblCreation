#' Title
#'
#' @param StartDate startdate
#' @param EndDate EndDate
#' @param Structure Date format
#'
#' @return
#' @export
#'
#' @examples
#'


DateTblCreation <- function(StartDate, EndDate, Structure) {
  out <- seq(as.Date(StartDate, format=Structure),
             as.Date(EndDate, format=Structure), by="days")
  DateFull<-data.frame(format(out, Structure))
  colnames(DateFull)<-c("DateFull")

  DateFull$DateFull = as.POSIXct(DateFull$DateFull)
  DateFull$DateFull <- as.Date(DateFull$DateFull)
  DateFull$DateMM<-as.numeric(month(ymd(DateFull$DateFull)))
  DateFull$DateDD<-as.numeric(day(ymd(DateFull$DateFull)))
  DateFull$DateYYYY<-as.numeric(year(ymd(DateFull$DateFull)))
  DateFull$DaysInYear <- as.numeric(yday(DateFull$DateFull))
  return(DateFull)
}
