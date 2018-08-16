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
res$bibTexKey <- "May2000"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

children from 12 (out of 13) school were examined. Also, out-of-school children and those who attend special schools. Mothers of the control children became the maternal controls.
Maternal characteristics concern past and current drinking habits. 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c('age, study year');   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "school, community"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "South Africa"

### Study year, in text
res$sample$year <- NA;

### Sample size, as a number
res$sample$size <- 46 + 42;   	### 46 FAS mothers, see Figure 1 page 1907

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 46                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 42                              ### Additional variables specified as univariate data for this subsample
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
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  mean = 12.6,                       ### Mean or NA
  n = 35,                           ### If the total N is < relevant sample size
  sd = 12.21,                         ### Standard deviation, or NA
  comment = "drinks per week; extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  median = NA,                     ### Median or NA
  mean = 2.4,                       ### Mean or NA
  n = 41,                           ### If the total N is < relevant sample size
  sd = 4.68,                         ### Standard deviation, or NA
  comment = "drinks per week; extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a Saturday",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  mean = 7.3,                       ### Mean or NA
  n = 35,                           ### If the total N is < relevant sample size
  sd = 6.17,                         ### Standard deviation, or NA
  comment = "drinks on a typical weekend day; extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a Saturday",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = 1.9,                       ### Mean or NA
  n = 41,                           ### If the total N is < relevant sample size
  sd = 2.84,                         ### Standard deviation, or NA
  comment = "drinks on a typical weekend day; extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 25.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 45.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 40.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 54.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 15.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 25.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 45.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 17.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 40.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 57.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 15.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 22.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 50.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 40.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 57.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 22.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  percentage = 52.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 25.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  percentage = 42.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 51.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  percentage = 5.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  percentage = 87.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  percentage = 46.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3, page 1910"  ### Comment or NA
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
  variable = "Current alcohol consumption",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "current",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "we don't know how much 1 drink is in oz"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks current a Saturday",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "current",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "saturday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "we don't know how much 1 drink is in oz"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same (as current use)',
             'drank less (than current use)',
             'drank more (than current use)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "before",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6. Drinking in months before pregnancy with index child, %Drank about the same (as current use),Drank less (than current use), Drank more (than current use) Note, we don't know how much 1 drink is in oz"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same (as current use)',
             'drank less (than current use)',
             'drank more (than current use)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.6. Drinking during first trimester of pregnancy with index child, % Drank about the same (as current use) Drank less (than current use) Drank more (than current use). Note, we don't know how much 1 drink is in oz"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same (as current use)',
             'drank less (than current use)',
             'drank more (than current use)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.6. Drinking during second trimester of pregnancy with index child, % Drank about the same (as current use) Drank less (than current use) Drank more (than current use). Note, we don't know how much 1 drink is in oz"                       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same (as current use)',
             'drank less (than current use)',
             'drank more (than current use)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.6. Drinking during third trimester of pregnancy with index child, % Drank about the same (as current use) Drank less (than current use) Drank more (than current use). Note, we don't know how much 1 drink is in oz"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during", ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,           			### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.6. Smoked during index pregnancy, Yes %"                      ### Comment, as text; or NA
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