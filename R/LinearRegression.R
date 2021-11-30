#I want to look at the weight with the species as a function. I expect my output to be weight as predictor 
#of species with a line of linear regression.
#'
#'
#'@param . is a piped surveys.csv file with weight and hindfoot length selected and grouped
#'@param weight is weight column from surveys.csv
#'@param hindfoot_length is a hindfoot_length column from surveys.csv
#'@return Returns a linear regression model of weight and hindfoot length, with weight in
#'x axis, and hindfoot_length in y axis
#'
hindfoot_weight_regression <- function(., weight, hindfoot_length){
  if(!is.data.frame(surveys)){
    return("This is not a dataframe")
  }
  plt_regression <- ggplot(., aes(x = weight, y = hindfoot_length)) +
    geom_point(size = .25) + 
    geom_smooth(method = "lm",     
                color = "blue",    
                size = .5,        
                fill = "black")        
  return(plt_regression)
}
#'
#'
#'
#'
#'
mean_surveys%>%
  filter(!is.na(weight))%>%
  filter(!is.na(hindfoot_length))%>%
  select(weight,hindfoot_length)%>%                 
  group_by(weight,hindfoot_length)%>%
  hindfoot_weight_regression(weight = weight, hindfoot_length = hindfoot_length)
#'