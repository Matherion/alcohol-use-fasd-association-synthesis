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
res$bibTexKey <- "May2014a"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Overlap other publication? see page 32 section Data collection and instruments.

Standardized ethanol units: one standard drink = 340 ml (see page 32).


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
res$sample$description <- "Maternal characteristics of mothers of children with FASD"

### Description of geography of sample, in text
res$sample$geography <- "South Africa"

### Study year, in text
res$sample$year <- NA;  			## described in earlier publication

### Sample size, as a number
res$sample$size <- 43 + 85;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 43                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 85                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 74.4,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 31.8,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 67.4,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and drinking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 15.5,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and binge 3+ during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 55.8,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and binge 3+ during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 7.1,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and binge 5+ during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 48.8,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and binge 5+ during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 4.7,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 67.4,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 20.0,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 89.7,
  comment = "Binge 3+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 5.9,
  comment = "Binge 3+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  mean = 13.90,                        ### Mean or NA
  sd = 10.41,                          ### Standard deviation, or NA
  comment = "extracted from table 4 page 862"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 4.81,                        ### Mean or NA
  sd = 4.98,                          ### Standard deviation, or NA
  comment = "extracted from table 4 page 862"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 90.7,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 22.4,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 90.7,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 15.3,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  percentage = 88.4,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 12.9,
  comment = "Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
 # value = 1,                      ### Value this result pertains to
  percentage = 67.4,
  comment = "Binge 3+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
 # value = 1,                      ### Value this result pertains to
  percentage = 9.4,
  comment = "Binge 3+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
 # value = 2,                      ### Value this result pertains to
  percentage = 55.8,
  comment = "Binge 5+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
#  value = 2,                      ### Value this result pertains to
  percentage = 5.9,
  comment = "Binge 5+, Extracted from table 1 page 34"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinkers per drinking day",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  mean = 4.93,                        ### Mean or NA
  sd = NA,                          ### Standard deviation, or NA
  comment = "extracted from table 4 page 862"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinkers per drinking day",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 0.73,                        ### Mean or NA
  sd = NA,                          ### Standard deviation, or NA
  comment = "extracted from table 4 page 862"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FASD diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FASD diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FASD diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'FASD'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,
   
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
  diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  5,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. Smoked during index pregnancy (%) "                      ### Comment, as text; or NA
);

 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking and binge 3+ during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking and binge drinking during",
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. Smoked and binged (3+)during index pregnancy (%)"                     ### Comment, as text; or NA
);
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking and binge 5+ during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking and binge drinking during",
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. Smoked and  binged (5+) during index pregnancy (%) "                      ### Comment, as text; or NA
);

 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking and drinking during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking and alcohol consumption during",
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. Smoked and consumed alcohol during index pregnancy (%) "                      ### Comment, as text; or NA
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "preceding week"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge current",     ### Replace 'example' with variable name
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
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Binge 3+ drinks preceding week"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current alcohol consumption a week",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
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
  comment = "Table 1, p. 34. Drank during index pregnancy, 1st trimester (%) "                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
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
  comment = "Table 1, p. 34. Drank during index pregnancy, 2nd trimester (%) "                      ### Comment, as text; or NA
);
 
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
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
  comment = "Table 1, p. 34. Drank during index pregnancy, 3rd trimester (%) "                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 3+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#  values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
#  labels = c('Binge 3+ drinks during',
#			 'Binge 5+ drinks during'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. binged (3+) one or more days in during index pregnancy (%) "                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 5+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#  values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
#  labels = c('Binge 3+ drinks during',
#			 'Binge 5+ drinks during'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 34. binged (5+) one or more days in during index pregnancy (%)"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinkers per drinking day",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "a day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "# drinkers per drinking during pregnancy"                      ### Comment, as text; or NA
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