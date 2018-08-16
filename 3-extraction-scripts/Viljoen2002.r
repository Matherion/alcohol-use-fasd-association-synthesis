##########################################################################
###
### R file for the FASD Synthesis systematic review.
### ###
### INSTRUCTIONS:
### Work through the sections below, and complete the information. There
### are three types of information:
###   - Text:   this can be any content; has to be in between double quotes.
###   - Number: Any number; cannot contain any other  characters, should not be quoted.
###   - NA:     For missing information, just use NA, always without quotes (just
###             the two characters NA).
###   – Vector: Lists of either numbers of text elements; see the instructions!
###
##########################################################################

res <- list();             ### Generate object to store data
res$sample <- list();      ### Generate object to store sample information
res$subsample <- list();   ### Generate object to store subsamples
res$variable <- list();    ### Generate object to store variables
res$univariate <- list();  ### Generate object to store univariate data
res$association <- list(); ### Generate object to store association data
class(res) <- "sysRevExtractionObject"; ### Set class of object

##########################################################################
### BIBTEX KEY
##########################################################################

### Store the Bibtex key as text
res$bibTexKey <- "Viljoen2002"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Data from this publication is part of the larger study by May et al. 2000. From the 46, 35 mothers were interviewed for the present study.
One ethanol unit is 340ml beer (10.2 oz of 5 % alcohol), 120ml wine (4 oz of 11.5%), 44ml spirits (1.5 oz of 86 proof) 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c('study year');   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "school"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "South Africa"

### Study year, in text
res$sample$year <- 2001;		### publication was received in 2001

### Sample size, as a number
res$sample$size <- 31 + 31;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 31                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 31                              ### Additional variables specified as univariate data for this subsample
);

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0)


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

### not applicable for this article. Only between group differences were calculated

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 80.6,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 45.2,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  mean = 13.0,
  sd = 12.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 2.8,
  sd = 5.3,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 3.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 0.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 7.2,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 1.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 2.0,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 0.2,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 12.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption weekends",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 2.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Percentage on weekends",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 97.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Percentage on weekends",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 51.3,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 83.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 48.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 83.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 45.2,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 50.4,
  sd = 44.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 29.5,
  sd = 61.1,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 43.7,
  sd = 37.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 25.7,
  sd = 39.0,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 44.7,
  sd = 38.3,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 22.2,
  sd = 33.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 42.1,
  sd = 38.1,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = NA,
  mean = 19.7,
  sd = 32.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 19.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 48.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 22.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 38.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 58.1,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 12.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 19.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 48.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 19.4,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 38.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 61.3,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 12.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 16.1,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 51.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 22.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 38.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 61.3,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 9.7,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 16.1,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 51.6,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 29.0,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 41.9,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 54.8,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 6.5,
  comment = "extracted from table 4, page 12"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'FAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,		
  
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
 diagnosisMethod = "IOM96",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"
 ); 

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Consumes alcohol: current",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "SD were measured in ethanol units, one unit 340ml can of beer (10.2 oz of 5% ethanol), 120 ml wine (4 oz of 11.5% ethanol) or 44 ml distilled spirits (1.5 oz of 86 proof).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
  
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current alcohol consumption",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "SD were measured in ethanol units, one unit 340ml can of beer (10.2 oz of 5% ethanol), 120 ml wine (4 oz of 11.5% ethanol) or 44 ml distilled spirits (1.5 oz of 86 proof).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking current",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Smoked during index pregnancy (%)"                      ### Comment, as text; or NA
);
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current alcohol consumption weekends",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('friday',
			'saturday',
			'sunday',
			'total'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "weekendday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",					 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "SD were measured in ethanol units, one unit 340ml can of beer (10.2 oz of 5% ethanol), 120 ml wine (4 oz of 11.5% ethanol) or 44 ml distilled spirits (1.5 oz of 86 proof).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current tobacco use",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Grams of tobacco used per week 1st trimester (mean)"                      ### Comment, as text; or NA
);
 
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Grams of tobacco used per week 2nd trimester (mean)"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Grams of tobacco used per week 3rd trimester (mean)"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percentage on weekends",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "weekendday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Drinking in months before pregnancy with index child (%), drank about the same (than current)', 'drank less', 'drank more'"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Drinking during 1st trimester of pregnancy with index child (%), drank about the same (than current)', 'drank less', 'drank more'"   ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Drinking during 2nd trimester of pregnancy with index child (%), drank about the same (than current)', 'drank less', 'drank more'"    ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 12. Drinking during 3rd trimester of pregnancy with index child (%), drank about the same (than current)', 'drank less', 'drank more'"  ### Comment, as text; or NA
);
 
 
##########################################################################



##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'userfriendlyscience'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)