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
res$bibTexKey <- "Coyne2008"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Review of maternal hospital records. Controls were found in database matched for variables as described. Controls were NOT diagnosed with FASD or related disorders

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c("child's month of birth", "child's sex", "child's indigenous status", "child's features associated with FAS");   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "records"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'mixed'; ### Both? Not specifically mentioned; TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "maternal characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "Australia"

### Study year, in text
res$sample$year <- NA;		
res$sample$startyear <- 1994;
res$sample$endyear <- 2006;

### Sample size, as a number
res$sample$size <- 54 + 56;		# N = 54 FAS mothers

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 54                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 56                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 3,                           ### If the total N is < relevant sample size
  percentage = 7.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 / day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 15,                           ### If the total N is < relevant sample size
  percentage = 28.3,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 / day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 11,                           ### If the total N is < relevant sample size
  percentage = 27.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, < 10 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 16,                           ### If the total N is < relevant sample size
  percentage = 30.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, < 10 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 7,                           ### If the total N is < relevant sample size
  percentage = 17.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 11-20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 6,                           ### If the total N is < relevant sample size
  percentage = 11.3,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 11-20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 19,                           ### If the total N is < relevant sample size
  percentage = 47.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, > 20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 16,                           ### If the total N is < relevant sample size
  percentage = 30.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, > 20 /day; see table 3 page 244"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 42,                           ### If the total N is < relevant sample size
  percentage = 11.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 44,
  percentage = 31.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 42,
  percentage = 2.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category mild, <20 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 44,
  percentage = 15.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category mild, <20 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 42,
  percentage = 9.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category moderate, 20-80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 44,
  percentage = 22.7,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category moderate, 20-80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 42,
  percentage = 76.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category heavy, >80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 44,
  percentage = 29.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category heavy, >80 mg/week; see table 3 page 244"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 3,                           ### If the total N is < relevant sample size
  percentage = 7.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 / day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 27,                           ### If the total N is < relevant sample size
  percentage = 47.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 / day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 12,                           ### If the total N is < relevant sample size
  percentage = 27.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, < 10 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 18,                           ### If the total N is < relevant sample size
  percentage = 31.6,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, < 10 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 8,                           ### If the total N is < relevant sample size
  percentage = 18.6,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 11-20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 5,                           ### If the total N is < relevant sample size
  percentage = 8.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 11-20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 20,                           ### If the total N is < relevant sample size
  percentage = 46.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, > 20 /day; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 7,                           ### If the total N is < relevant sample size
  percentage = 12.3,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, > 20 /day; see table 3 page 244"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 45,
  percentage = 22.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 47,
  percentage = 63.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category none, 0 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 45,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category mild, <20 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 47,
  percentage = 8.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category mild, <20 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 45,
  percentage = 8.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category moderate, 20-80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 47,
  percentage = 10.6,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category moderate, 20-80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 45,
  percentage = 68.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category heavy, >80 mg/week; see table 3 page 244"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 47,
  percentage = 17.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category heavy, >80 mg/week; see table 3 page 244"  ### Comment or NA
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
  diagnosisMethod = NA,             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "passive"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking before", ### Replace 'example' with variable name
  recodeToCategory = "Smoking before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('none',
             '< 10/day',
             '11-20 /day',
             '>20 /day'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",                ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.5. Before pregnancy None,≤ 10/day, 11–20/day. > 20/day (%). The variables are categorized and ranges are shown in table 1 page 242"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before a week", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('none (0 g/week)',
             'mild (0-20 g/week)',
             'moderate (20-80 g/week)',
             'heavy (>80 g/week)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",                ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "a week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.5. Before pregnancy Alcohol a week. None,≤ 10/day, 11–20/day. > 20/day (%). The variables are categorized and ranges are shown in table 1 page 242"          ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during", ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('none',
             '< 10/day',
             '11-20 /day',
             '>20 /day'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "not specified, probably retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",                ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week]",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.5. During pregnancy Smoking None,≤ 10/day, 11–20/day. > 20/day (%). the variables are categorized and ranges are shown in table 1 page 242"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during a week", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('none (0 g/week)',
             'mild (0-20 g/week)',
             'moderate (20-80 g/week)',
             'heavy (>80 g/week)'),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "not specified, probably retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",                ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per week]",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p.5. During pregnancy Alcohol (%). The variables are categorized and ranges are shown in table 1 page 242"                      ### Comment, as text; or NA
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