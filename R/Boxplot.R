#I will plot species with weight. I expect an output showing median weight associated
#with species with boxes showing max and mins of weight, with whiskers showing outliers. 

#'
#'@param . is a piped surveys.csv file
#'@param species_id is a species_id column in surveys.csv
#'@param weight is a weight column in surveys
#'@return Returns a boxplot model of your species' weight
#'@export 
 boxplot_weight_species <- function(., species_id,weight){
      if(!is.data.frame(surveys)){
        return("This is not a dataframe")
      }
     plt <- ggplot(., mapping = aes(x = weight, y = species_id)) +
            geom_boxplot()
            return(plt)
 }
#'
 








