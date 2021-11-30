#I need to remove NA values that are missing. My output will be a weight column without NAs
#'
#'
#'@param . is a piped surveys.csv file
#'@param weight is the weight column of surveys.csv
#'@return Returns a surveys.csv without NA values in weight column
#'
no_na_weight <- function(., weight){
  if(!is.na(surveys$weight)){
    return("There are no NA values")
  }
  scrub_weight_na <- surveys%>%
  filter(!is.na(weight))
return(scrub_weight_na)
}
#'@examples 
#'surveys%>%
#'no_na_weight(weight = weight)
#
#is.na(surveys$weight)
#'