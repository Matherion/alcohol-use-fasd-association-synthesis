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
res$bibTexKey <- "Miller1995"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

This publication was mentioned in review by May et al. 
Authors used an existing birth defects registry. The first 100 cases were selected for Colorado residents, eligible conditions (e.g. FAS).
Control group is a birth cohort in suspected high sub population?

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### Convenience sampling --> first 100 FAS cases
res$sample$samplingControls <- NA;   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "medical records"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "United States"

### Study year, in text
res$sample$year <- NA;
res$sample$startyear <- 1992;
res$sample$endyear <- 1994;

### Sample size, as a number
res$sample$size <- 22 + 214499;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 22                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 214499                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 45,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 94,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 32,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 3,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 5,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 5,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Controlmothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 5,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 5,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 6,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 6,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 7,
  percentage = 9,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 7,
  percentage = 0,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 8,
  percentage = 5,
  comment = "Unknown; Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 8,
  percentage = 3,
  comment = "Unknown; Extracted from table 3 page 694"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 23,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 23,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 14,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 9,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 5,
  percentage = 14,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 6,
  percentage = 5,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",                   ### Name of relevant subsample, or NA
  value = 7,
  percentage = 14,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 1,
  percentage = 81,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 2,
  percentage = 5,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 3,
  percentage = 6,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 4,
  percentage = 1,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 5,
  percentage = 3,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 6,
  percentage = 1,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  value = 7,
  percentage = 3,
  comment = "Extracted from table 3 page 694"                      ### Comment or NA
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
  diagnosisMethod = "ICD-9-CM 760.71",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "required",   ### "never", "required", "if possible"
  caseascertainment = "passive"
 ); 


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during a week",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5, 6, 7, 8),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('0',
			'1-3',
			'4-6',
			'7-12',
			'13-20',
			'21-98',
			'> 98',
			'unknown'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "unknown",        ### "self-report" or "interview"
  timeframe = "unknown",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 694. Drinks per week '0', '1-3','4-6',	'7-12',	'13-20','21-98','> 98','unknown'"                      ### Comment, as text; or NA
);

 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5, 6, 7),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('0',
			'1-5',
			'6-10',
			'11-15',
			'16-20',
			'>20',
			'unknown'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "unknown",        ### "self-report" or "interview"
  timeframe = "unknown",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 694. Cigarettes per day. 0','1-5', '6-10','11-15',	'16-20','>20','unknown'"                      ### Comment, as text; or NA
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