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
res$bibTexKey <- "Ceccanti2014"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Total of 43 schools selected in Lazio region, Italy. Mothers were interviewed in cross-sectional case-control study. 
Sample contains 3 groups: Case mothers; Control mothers (i) random-selected from healthy controls (ii) all other consented mothers in the schools

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c("school year child");   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "school"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- "non-native"; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Characteristics of mothers of children with FASD"

### Description of geography of sample, in text
res$sample$geography <- "Italy"

### Study year, in text
res$sample$year <- 2014;	### no study year was provided

### Sample size, as a number
res$sample$size <- 39 + 108 + 749;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["FASD mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 39                             ### Additional variables specified as univariate data for this subsample
 );
 
 res$subsample[["Control mothers R-S"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 108                              ### Additional variables specified as univariate data for this subsample
 );
#  
# res$subsample[["Control mothers community"]] <- list(    ### Create object for this subsample
#   description = NA,
#   size = 749                              ### Additional variables specified as univariate data for this subsample
#  );
 
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

### not applicable for this article. Only test scores were given between groups on 1 variable

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a day",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = .94,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = 1.65,                        ### Standard deviation, or NA
  comment = "Total nr of standard drinks per day 3 months prior to pregnancy; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a day",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .63,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = .76,                         ### Standard deviation, or NA
  comment = "Total nr of standard drinks per day 3 months prior to pregnancy;see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks before a day",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .54,                       ### Mean or NA
#   percentage = NA,                  ### Percentage that endorsed 1, or NA
#   sd = .72,                         ### Standard deviation, or NA
#   comment = "Total nr of standard drinks per day 3 months prior to pregnancy;see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = 1.12,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = 3.20,                        ### Standard deviation, or NA
  comment = "Average nr of drinks per week during pregnancy; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .49,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = 1.76,                         ### Standard deviation, or NA
  comment = "Average nr of drinks per week during pregnancy; see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks during a week",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .66,                       ### Mean or NA
#   percentage = NA,                  ### Percentage that endorsed 1, or NA
#   sd = 2.20,                         ### Standard deviation, or NA
#   comment = "Average nr of drinks per week during pregnancy; see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a drinking day",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = .44,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = .60,                        ### Standard deviation, or NA
  comment = "Drinks consumed per drinking day during pregnancy; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a drinking day",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .31,                       ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = .52,                         ### Standard deviation, or NA
  comment = "Drinks consumed per drinking day during pregnancy;see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks during a drinking day",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .27,                       ### Mean or NA
#   percentage = NA,                  ### Percentage that endorsed 1, or NA
#   sd = .51,                         ### Standard deviation, or NA
#   comment = "Drinks consumed per drinking day during pregnancy;see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  percentage = 5.1,                 ### Percentage that endorsed 1, or NA
  comment = "Binge, 3 drinks per occasion during pregnancy; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  percentage = .0,                  ### Percentage that endorsed 1, or NA
  comment = "Binge, 3 drinks per occasion during pregnancy; see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   percentage = 1.3,                  ### Percentage that endorsed 1, or NA
#   comment = "Binge, 3 drinks per occasion during pregnancy; see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  percentage = 10.3,                 ### Percentage that endorsed 1, or NA
  comment = "Binge, 3 drinks per occasion current; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  percentage = 6.5,                  ### Percentage that endorsed 1, or NA
  comment = "Binge, 3 drinks per occasion current;see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge current",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   percentage = 4.3,                  ### Percentage that endorsed 1, or NA
#   comment = "Binge, 3 drinks per occasion current;see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = .32,                        ### Mean or NA
  sd = .51,                          ### Standard deviation, or NA
  comment = "Drinks consumed per day, 1st trimester; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .23,                       ### Mean or NA
  sd = .45,                         ### Standard deviation, or NA
  comment = "Drinks consumed per day, 1st trimester;see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .22,                       ### Mean or NA
#   sd = .56,                         ### Standard deviation, or NA
#   comment = "Drinks consumed per day, 1st trimester;see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = .37,                        ### Mean or NA
  sd = .53,                          ### Standard deviation, or NA
  comment = "Drinks consumed per day, 2nd trimester; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .22,                       ### Mean or NA
  sd = .44,                         ### Standard deviation, or NA
  comment = "Drinks consumed per day, 2nd trimester;see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks during second trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .21,                       ### Mean or NA
#   sd = .42,                         ### Standard deviation, or NA
#   comment = "Drinks consumed per day, 2nd trimester;see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "FASD mothers",                   ### Name of relevant subsample, or NA
  mean = .36,                        ### Mean or NA
  sd = .54,                          ### Standard deviation, or NA
  comment = "Drinks consumed per day, 3rd trimester; see table 2 page 204"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",                   ### Name of relevant subsample, or NA
  mean = .22,                       ### Mean or NA
  sd = .44,                         ### Standard deviation, or NA
  comment = "Drinks consumed per day, 3rd trimester; see table 2 page 204"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinks during third trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",                   ### Name of relevant subsample, or NA
#   mean = .20,                       ### Mean or NA
#   sd = .42,                         ### Standard deviation, or NA
#   comment = "Drinks consumed per day, 3rd trimester; see table 2 page 204"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FASD diagnosis",       ### Name of variable this result pertains to
  subsample = "FASD mothers",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FASD diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers R-S",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FASD diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers community",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );

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
  diagnosisMethod = "IOM96,IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  5,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"
 );
  
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks before a day", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "before",      					### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
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
  comment = "Table 2, p. 4. Total no. of standard drinks per day 3 months before pregnancy, Mean (SD). Note,we don't know what is 1 standard drink"    ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a week", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 4. Average no. of standard drinks per week during pregnancy, Mean (SD). Note, we don't know what is 1 standard drink" ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a drinking day", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",					 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 4. Drinks consumed per drinking day during pregnancy, Mean (SD). Note,we don't know what is 1 standard drink"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during", ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "binge, 3 drinks per occasion",                 ### Description, as text; or NA
  comment = "Table 2, p. 4. Binge, 3 drinks per occasion during pregnancy (% Yes)"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge current", ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year", "per occasion"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "binge, 3 drinks per occasion",                 ### Description, as text; or NA
  comment = "Table 2, p. 4. Binge, 3 drinks per occasion, current (% Yes)"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during first trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
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
  comment = "Table 2, p. 4. Drinks consumed per drinking day, 1st trimester, Mean (SD)"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during second trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
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
  comment = "Table 2, p. 4. Drinks consumed per drinking day, 2nd trimester, Mean (SD)"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during third trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per 108day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 4. Drinks consumed per drinking day, 3rd trimester, Mean (SD)"                      ### Comment, as text; or NA
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