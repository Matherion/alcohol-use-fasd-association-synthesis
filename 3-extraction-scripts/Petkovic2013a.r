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
res$bibTexKey <- "Petkovic2013a"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

You can enter comments here.

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
res$sample$geography <- "Croatia"

### Study year, in text
res$sample$year <- NA;

### Sample size, as a number
res$sample$size <- 55 + 769;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 55                             ### Additional variables specified as univariate data for this subsample
);


res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 769                             ### Additional variables specified as univariate data for this subsample
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
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 9,
  percentage = 16.4,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 141,
  percentage = 18.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 42,
  percentage = 76.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 614,
  percentage = 79.8,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 4,
  percentage = 7.2,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 14,
  percentage = 1.8,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 10,
  percentage = 18.2,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 80,
  percentage = 10.4,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 41,
  percentage = 74.5,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 679,
  percentage = 88.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 4,
  percentage = 7.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 10,
  percentage = 1.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 5,
  percentage = 9.1,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 47,
  percentage = 85.5,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 3,
  percentage = 5.5,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  n = 75,
  percentage = 9.8,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  n = 681,
  percentage = 88.6,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  n = 13,
  percentage = 1.7,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1553"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  n = 0,
  percentage = 0.0,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  n = 21,
  percentage = 2.7,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  n = 0,
  percentage = 0.0,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  n = 6,
  percentage = 0.8,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  n = 4,
  percentage = 7.3,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  n = 5,
  percentage = 0.7,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during entire pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  n = 3,
  percentage = 5.5,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during entire pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  n = 19,
  percentage = 2.5,                  ### Percentage that endorsed 1, or NA
  comment = "extracted from table 3, page 1554"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS, pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS, pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);


##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################
# 
# res$variable[[length(res$variable) + 1]] <- list(
#  variable = "FAS diagnosis",       ### Name of variable this result pertains to
#  moment = 1,                       ### moment this variable was measured/manipulated
#   type = "aggregate",               ### "question", "aggregate", or "manipulation"# 
#  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#   values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
#   labels = c('Control', 'FAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
#   specifiesSubsample = TRUE,
  
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
#   diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
#   syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
#   maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
#   caseascertainment = "active"
#  ); 
 
# res$variable[[length(res$variable) + 1]] <- list(
#   variable = "pFAS diagnosis",       ### Name of variable this result pertains to
#   moment = 1,                       ### moment this variable was measured/manipulated
#   type = "aggregate",               ### "question", "aggregate", or "manipulation"
#   datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#   values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
#   labels = c('Control', 'pFAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
#   specifiesSubsample = TRUE,
  
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
#   diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
#   syndromeCategory =  2,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
#   maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
#   caseascertainment = "active"
#  );

 res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS, pFAS diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
   type = "aggregate",               ### "question", "aggregate", or "manipulation"# 
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
   values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'FAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   specifiesSubsample = TRUE,
  
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
   diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
   syndromeCategory =  6,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD), 6 (mix of)
   maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
   caseascertainment = "active"
  ); 

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current alcohol consumption",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('admitted',
			 'negative',
			 'unanswered'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  

  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
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
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p 1553. "                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('admitted',
			 'negative',
			 'unanswered'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Alcohol drink was defined as 0.5 dL of spirits, 1.5 dL of wine or 3.3 dL of beer, as derived from ounce metric system, and binge drinking as having five or more alcoholic drinks per occasion",                 ### Description, as text; or NA
  comment = "Table 3, p 1553. Pregnancy alcohol consumption %, admitted', 'negative','unanswered' "                      ### Comment, as text; or NA
);
 
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('admitted',
			 'negative',
			 'unanswered'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p 1553. Smoking during pregnancy %, admitted', 'negative','unanswered' "                      ### Comment, as text; or NA
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
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
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
  comment = "Table 3, p 1554. Alcohol consumption period 1st trimester %"                      ### Comment, as text; or NA
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
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
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
  comment = "Table 3, p 1554. Alcohol consumption period 2nd trimester %"                      ### Comment, as text; or NA
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
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
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
  comment = "Table 3, p 1554. Alcohol consumption period 3rd trimester %"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during entire pregnancy",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
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
  comment = "Table 3, p 1554. Alcohol consumption period entire pregnancy %"                      ### Comment, as text; or NA
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