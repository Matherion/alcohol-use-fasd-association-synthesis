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
res$bibTexKey <- "Cannon2012"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

This study is part of the FASSNet whereby FAS mothers were identified through existing source records.
The surveillance data (FAS) was population based and done in 5 states including Alaska, Arizona, Colorado, New York; births between 1995 and 1997. 
Control group consists of (table 1) state specific population data from records (1996) or consensus (2000); (table 2) nation wide surveys not stratified by state

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";   ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c("age, birth cohort");   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "records"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- "mixed"; ### Both native and non-native. let op: individuele N's zijn niet gegeven. "TRUE" for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "United States"

### Study year, in text
res$sample$year <- NA;
res$sample$startyear <- 1995;
res$sample$endyear <- 1997;

### Sample size, as a number
res$sample$size <- NA;		### Note that not information is available for these 353 mothers. Also, N=353 represents only mothers of children with FAS

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["FAS mothers, Total"]] <- list(    ### Create object for this subsample
  size = 353                              ### 74 + 118 + 67 + 94
 );

res$subsample[["Control mothers, Total"]] <- list(    ### Create object for this subsample
  size = 3894874,                             ### Additional variables specified as univariate data for this subsample
  comment = "all control birth rates were extracted from http://www.cdc.gov/nchs/data/statab/natfinal1996.annvol1_09.pdf"
 );

## res$subsample[["FAS mothers, United States, Alaska"]] <- list(    ### Create object for this subsample
##   size = 74                              ### Additional variables specified as univariate data for this subsample
## );

## res$subsample[["Control mothers, United States, Alaska"]] <- list(    ### Create object for this subsample
##   size = 9933                          ### Additional variables specified as univariate data for this subsample
## );
 
## res$subsample[["FAS mothers, United States, Arizona"]] <- list(    ### Create object for this subsample
##   size = 118                              ### Additional variables specified as univariate data for this subsample
## );

## res$subsample[["Control mothers, United States, Arizona"]] <- list(    ### Create object for this subsample
##  size = 75127                         ### Additional variables specified as univariate data for this subsample
## );
  
# res$subsample[["FAS mothers, United States, Colorado"]] <- list(    ### Create object for this subsample
#   size = 67                              ### Additional variables specified as univariate data for this subsample
# );
# 
# res$subsample[["Control mothers, United States, Colorado"]] <- list(    ### Create object for this subsample
#   size = 56059                              ### Additional variables specified as univariate data for this subsample
# );
# 
# res$subsample[["FAS mothers, United States, New York"]] <- list(    ### Create object for this subsample
#   size = 94                              ### Additional variables specified as univariate data for this subsample
# );
# 
# res$subsample[["Control mothers, United States, New York"]] <- list(    ### Create object for this subsample
#   size = 265376                              ### Additional variables specified as univariate data for this subsample
# );
 
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

### not applicable for this article

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   percentage = 67/73*100,           ### Percentage that endorsed 1, or NA
#   n = 73,
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   percentage = 4,                  ### Percentage that endorsed 1, or NA
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   percentage = 111/111*100,         ### Percentage that endorsed 1, or NA
#   n = 111,
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   percentage = 1,                   ### Percentage that endorsed 1, or NA
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   percentage = 62/64*100,           ### Percentage that endorsed 1, or NA
#   n = 64,
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   percentage = 2,                   ### Percentage that endorsed 1, or NA
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, New York",         ### Name of relevant subsample, or NA
#   percentage = 82/87*100,           ### Percentage that endorsed 1, or NA
#   n = 87,
#   comment = "see table 1 page 92"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, New York",         ### Name of relevant subsample, or NA
#   percentage = 1,                  ### Percentage that endorsed 1, or NA
#   comment = "see table 1 page 92"                      ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcoholism",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  percentage = 47/51*100,           ### Percentage that endorsed 1, or NA
  n = 51,
  comment = "see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcoholism",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  percentage = 6,                  ### Percentage that endorsed 1, or NA
  
  ### Sylvia: I removed this n, because it's not actually the 'n'. The 'n' pertains
  ### to the entire group, that is, where it deviates from the subsample n. Here, you
  ### used it to specify how many people the 6% corresponds to.
  
  #n = 2886,						### see table 2 footnote. N was 2886?
  comment = "see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a sitting",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  percentage = 16/50*100,           ### Percentage that endorsed 1, or NA
  comment = "<4 drinks ;We don't know how much oz/mg is one drink? see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a sitting",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  percentage = 34/50*100,           ### Percentage that endorsed 1, or NA
  comment = ">4 drinks; We don't know how much oz/mg is one drink? see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a sitting",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  percentage = 97,                  ### Percentage that endorsed 1, or NA
  comment = "<4 drinks but we don't know the N?; see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a sitting",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  percentage = 3,                  ### Percentage that endorsed 1, or NA
  comment = ">4 drinks but we don't know the N?; see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Frequency during",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  percentage = 15/42*100,           ### Percentage that endorsed 1, or NA
  comment = "<7 days; see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Frequency during",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  value = 4,                       ### Value this result pertains to
  percentage = 27/42*100,           ### Percentage that endorsed 1, or NA
  comment = ">7 days; see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Frequency during",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  percentage = 97,                  ### Percentage that endorsed 1, or NA
  comment = "<7 days but we don't know the N?; see table 2 page 93"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Frequency during",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  value = 4,                       ### Value this result pertains to
  percentage = 3,                  ### Percentage that endorsed 1, or NA
  comment = ">7 days but we don't know the N?; see table 2 page 93"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "FAS mothers, Total",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers, Total",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, New York",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "FAS diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, New York",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Arizona",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Alaska",         ### Name of relevant subsample, or NA
#   value = 1,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   value = 2,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, Colorado",         ### Name of relevant subsample, or NA
#   value = 2,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "FAS mothers, United States, New York",         ### Name of relevant subsample, or NA
#   value = 3,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   subsample = "Control mothers, United States, New York",         ### Name of relevant subsample, or NA
#   value = 3,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );



##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

# res$variable[[length(res$variable) + 1]] <- list(
#   variable = "Geography",       ### Name of variable this result pertains to
#   moment = 1,                       ### moment this variable was measured/manipulated
#   type = "aggregate",               ### "question", "aggregate", or "manipulation"
#   datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#   values = 0:3,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
#   labels = c('Arizona', 'Alaska', 'Colorado', 'New York'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
#   specifiesSubsample = TRUE
#    );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'FAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,

####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
  diagnosisMethod = "IOM96",       ### IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"		### see page 91; 
###FASSNet developed a multiple source surveillance methodology
### that identified FAS mothers through passive reporting and active
###review of records from sources such as hospitals, specialty
###clinics, private physicians, early intervention programs, Medicaid,
###birth certificates and other vital records, birth defects surveillance
###programs, and hospital discharge data.
);

# res$variable[[length(res$variable) + 1]] <- list(
# variable = "Smoking: during", 				### Replace 'example' with variable name
#  moment = 1,                       ### moment this variable was measured/manipulated
#  type = "question",                ### "question", "aggregate", or "manipulation"
#  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#  values = NA,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
#  labels = NA,						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
#  dataCollectionMethod = "record",        		 ### "self-report" or "interview" or "record documentation"
#  timeframe = "unknown",                   		 ### "retrospective" vs "concurrent" vs "unknown"
#  period = "during",                      		 ### "before", "1st", "2nd", "3rd", "during", "after", "other"
#  varType = "any",                     	 		 ### "frequency" or "units" or "any"
#  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
#  specificationUnits = NA,           			 ### "ml", "mg", "oz"
#  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
#  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
#  aboutAlcoholism = FALSE,						### TRUE if the variable is about alcoholism
#  description = NA,                		 ### Description, as text; or NA
#  comment = NA                     				 ### Comment, as text; or NA
# );

# res$variable[[length(res$variable) + 1]] <- list(
#  variable = "Alcohol consumption: during", 				### Replace 'example' with variable name
#  moment = 1,                       ### moment this variable was measured/manipulated
#  type = "question",                ### "question", "aggregate", or "manipulation"
#  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#  values = NA,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
#  labels = NA,						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
#  dataCollectionMethod = "record",        		 ### "self-report" or "interview" or "record documentation"
#  timeframe = "unknown",                   		 ### "retrospective" vs "concurrent" vs "unknown"
#  period = "during",                      		 ### "before", "1st", "2nd", "3rd", "during", "after", "other"
#  varType = "any",                     	 		 ### "frequency" or "units" or "any"
#  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
#  specificationUnits = NA,           			 ### "ml", "mg", "oz"
#  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
#  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
#  aboutAlcoholism = FALSE,						### TRUE if the variable is about alcoholism
# description = "Hymbaugh2002 page S44: To indicate positive maternal alcohol exposure, any
#medical record documentation of alcohol use by the mother during the index pregnancy (other than hearsay
#reported by a third party) met the criteria. Though substantial alcohol use is necessary to cause full FAS,
#information in medical records is usually insufficient to determine the level of use. However, this information is
#collected when available.",                		 ### Description, as text; or NA
#  comment = NA                     				 ### Comment, as text; or NA
#);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcoholism", 				### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "record",      ### "self-report" or "interview" or "record documentation"
  timeframe = "unknown",                   		 ### "retrospective" vs "concurrent" vs "unknown"
  period = "during",                      		 ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     	 		 ### "frequency" or "units" or "any"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = TRUE,						 ### TRUE if the variable is about alcoholism
  
  description = "Hymbaugh2002 page S44: To indicate positive maternal alcohol exposure, any
medical record documentation of alcohol use by the mother during the index pregnancy (other than hearsay
reported by a third party) met the criteria. Though substantial alcohol use is necessary to cause full FAS,
information in medical records is usually insufficient to determine the level of use. However, this information is
collected when available.",                		 ### Description, as text; or NA
  comment = NA                     				 ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a sitting", 				### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       						### moment this variable was measured/manipulated
  type = "question",                						### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             						### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2),          		 						### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('<4 drinks', '≥4 drinks'),						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "record",        		 ### "self-report" or "interview" or "record documentation"
  timeframe = "unknown",                   		 ### "retrospective" vs "concurrent" vs "unknown"
  period = "during",                      		 ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     	 ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",					 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per sitting",  		 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,						 ### TRUE if the variable is about alcoholism
  description = "we do not know how much oz/mg 1 drink is",                		 ### Description, as text; or NA
  comment = "Table 2, p. 93. Number of drinks in one sitting during pregnancy, % for <4 or >4 drinks"                     				 
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Frequency during", 				### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       						### moment this variable was measured/manipulated
  type = "question",                						### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             						### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(3, 4),          		 						### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('<7 days', '≥7 days'),						### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "record",        		 ### "self-report" or "interview" or "record documentation"
  timeframe = "unknown",                   		 ### "retrospective" vs "concurrent" vs "unknown"
  period = "during",                      		 ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     	 ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,						 ### TRUE if the variable is about alcoholism
  
  description = "we do not know how much oz/mg 1 drink is",                		 ### Description, as text; or NA
  comment = "Table 2, p. 93. Number of days per week drinking during pregnancy, % for <7 or 7"                     				 ### Comment, as text; or NA
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