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
res$bibTexKey <- "May2013e"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Note: FASD diagnosis was rarely made without direct maternal reporting of alcohol use

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- c('school year');   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "school"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with FASD";

### Description of geography of sample, in text
res$sample$geography <- "South Africa";

### Study year, in text
res$sample$year <- 2013;

### Sample size, as a number
res$sample$size <- NA;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers FAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 68                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers pFAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 52                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers ARND"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 35                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers exposed"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 38                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers unexposed"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 90                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 91.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 89.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 96.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 13.4,                       ### Mean or NA
  sd = 14.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 13.1,                       ### Mean or NA
  sd = 16.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 13.0,                       ### Mean or NA
  sd = 15.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 5.6,                       ### Mean or NA
  sd = 5.3,                         ### Standard deviation, or NA
  comment = "extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 3 page 826"    ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 33.0,                       ### Mean or NA
  sd = 18.6,                         ### Standard deviation, or NA
  comment = "each cigarette is 1 g. Extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 61.9,                       ### Mean or NA
  sd = 54.9,                         ### Standard deviation, or NA
  comment = "each cigarette is 1 g. Extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 48.2,                       ### Mean or NA
  sd = 35.2,                         ### Standard deviation, or NA
  comment = "each cigarette is 1 g. Extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 40.2,                       ### Mean or NA
  sd = 21.1,                         ### Standard deviation, or NA
  comment = "each cigarette is 1 g. Extracted from Table 3 page 826"    ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 54.5,                       ### Mean or NA
  sd = 32.6,                         ### Standard deviation, or NA
  comment = "each cigarette is 1 g. Extracted from Table 3 page 826"    ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 78.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 74.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 80.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
#  value = 1,
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 70.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
 # value = 1,
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   value = 2,
#   subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
#   percentage = 59.6,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 3 page 826"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#    variable = "Binge during",       ### Name of variable this result pertains to
#   value = 2,
#   subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
#   percentage = 53.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 3 page 826"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   value = 2,
#   subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
#   percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 3 page 826"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   value = 2,
#   subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
#   percentage = 41.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 3 page 826"                      ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   value = 2,
#   subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
#   percentage = 0,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 3 page 826"                      ### Comment or NA
# );
# 


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 59.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 53.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
#  value = 1,
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 41.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
 # value = 1,
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 97.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 78.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 90.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 92.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 86,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 94.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 86.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 52.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 35.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current last year",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current last year",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 96.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current last year",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current last year",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 92.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current last year",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 46,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 81.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 94.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 93.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = 10,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 84.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 82.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 100,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 88.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 73.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 70,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 84.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 47.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 62.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 52,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 52,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",                   ### Name of relevant subsample, or NA
  percentage = 41.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",                   ### Name of relevant subsample, or NA
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 3 page 826"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",         ### Name of relevant subsample, or NA
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
  diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  1,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible" 
  caseascertainment = "active"
 ); 
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'pFAS'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,
 
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
  diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  2,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible" 
  caseascertainment = "active"
 ); 
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'ARND'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,
 
 ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
  diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  4,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible" 
  caseascertainment = "active"
 ); 


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking during",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 # specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 826. Drinking indicators overall reported drinking during pregnancy (%)"                      ### Comment, as text; or NA
);
 
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a week",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
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
  comment = "Table 3, p. 826. Average no. drinks per week during pregnancy"                      ### Comment, as text; or NA
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
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "each cigarette is 1 g"                      ### Comment, as text; or NA
);
  
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 3+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
##  values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
## labels = c('Binge 3+', 'Binge 5+'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
     
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 # specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 826. Consumed 3 drinks or more per occasion during pregnancy (%)"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 5+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
##  values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
## labels = c('Binge 3+', 'Binge 5+'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
     
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion]",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 826. Consumed 5 drinks or more per occasion during pregnancy (%)"                      ### Comment, as text; or NA
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
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
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
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 826. Tobacco use, smoking during index pregnancy (%)"                      ### Comment, as text; or NA
);
   
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Consumes alcohol: current last year",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
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
  comment = NA                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
    
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
  comment = "Table 3, p. 826. Drinking before index pregnancy (%)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking during first trimester",     ### Replace 'example' with variable name
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
  comment = "Table 3, p. 826. Drank during trimesters 1st (%)"                      ### Comment, as text; or NA
);

 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during second trimester",
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
  comment = "Table 3, p. 826. Drank during trimesters 2nd (%)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking during third trimester",     ### Replace 'example' with variable name
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
  comment = "Table 3, p. 826. Drank during trimesters 3rd (%)"                      ### Comment, as text; or NA
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