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
res$bibTexKey <- "May2013d"

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
res$sample$samplingControls <- c('school year child');   ### NA for prospective designs; list of
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
  size = 63                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers pFAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 48                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers ARND"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 32                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers exposed"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 26                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers unexposed"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 81                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Drinks before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 11.0,                       ### Mean or NA
  sd = 9.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 14.0,                       ### Mean or NA
  sd = 14.7,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a week",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 16.9,                       ### Mean or NA
  sd = 16.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 8.2,                       ### Mean or NA
  sd = 5.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a week",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.3,                       ### Mean or NA
  sd = 1.3,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking more before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  percentage = 62.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking more before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  percentage = 52.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking more before",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  percentage = 67.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking more before",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  percentage = 44.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking more before",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 13.4,                       ### Mean or NA
  sd = 14.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 13.1,                       ### Mean or NA
  sd = 16.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 13.0,                       ### Mean or NA
  sd = 15.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 5.6,                       ### Mean or NA
  sd = 5.3,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.01,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 15.7,                       ### Mean or NA
  sd = 14.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 10.9,                       ### Mean or NA
  sd = 11.7,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 11.9,                       ### Mean or NA
  sd = 13.6,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a weekend",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 5.4,                       ### Mean or NA
  sd = 5.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a weekend",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.01,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during Mo-Thu",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.9,                       ### Mean or NA
  sd = 2.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during Mo-Thu",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 5.5,                       ### Mean or NA
  sd = 4.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during Mo-Thu",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 8.5,                       ### Mean or NA
  sd = 7.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during Mo-Thu",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 0.01,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during Mo-Thu",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.01,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a day",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 5.8,                       ### Mean or NA
  sd = 6.6,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a day",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 5.6,                       ### Mean or NA
  sd = 6.8,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a day",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 4.9,                       ### Mean or NA
  sd = 4.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a day",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 2.6,                       ### Mean or NA
  sd = 2.7,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during a day",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 78.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
 # value = 1,
  percentage = 74.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
 # value = 1,
  percentage = 80.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 70.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 3+",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
#  # value = 2,
#   percentage = 59.6,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 1, page 505"  ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
# #  value = 2,
#   percentage = 53.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 1, page 505"  ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
#  # value = 2,
#   percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 1, page 505"  ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
#  # value = 2,
#   percentage = 41.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 1, page 505"  ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Binge during",       ### Name of variable this result pertains to
#   subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
#  # value = 2,
#   percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
#   comment = "extracted from Table 1, page 505"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 59.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
 # value = 1,
  percentage = 53.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
 # value = 1,
  percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 41.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during 5+",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
#  value = 1,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 6.8,                       ### Mean or NA
  sd = 6.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 6.0,                       ### Mean or NA
  sd = 7.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 5.9,                       ### Mean or NA
  sd = 4.5,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 3.8,                       ### Mean or NA
  sd = 3.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 6.5,                       ### Mean or NA
  sd = 6.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 5.1,                       ### Mean or NA
  sd = 7.2,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 4.9,                       ### Mean or NA
  sd = 5.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 2.1,                       ### Mean or NA
  sd = 2.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 5.2,                       ### Mean or NA
  sd = 6.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 4.3,                       ### Mean or NA
  sd = 7.2,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 3.8,                       ### Mean or NA
  sd = 5.6,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 2.0,                       ### Mean or NA
  sd = 3.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.25,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 1.80,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 2.50,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days current a week",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 2.20,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days current a week",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 1.59,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.27,                       ### Mean or NA
  sd = 1.2,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 1.75,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during a week",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 1.88,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 1.02,                       ### Mean or NA
  sd = 0.6,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during a week",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.66,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 2.22,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 2.31,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 1.67,                       ### Mean or NA
  sd = 0.5,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.66,                       ### Mean or NA
  sd = 1.2,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 2.22,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 2.36,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 1.63,                       ### Mean or NA
  sd = 0.5,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 2.56,                       ### Mean or NA
  sd = 1.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 2.24,                       ### Mean or NA
  sd = 1.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = 2.69,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = 1.57,                       ### Mean or NA
  sd = 0.5,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking days during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 2, page 507"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = .175,                       ### Mean or NA
  sd = .11,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = .132,                       ### Mean or NA
  sd = .09,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = .170,                       ### Mean or NA
  sd = .11,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = .110,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = .161,                       ### Mean or NA
  sd = .10,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = .119,                       ### Mean or NA
  sd = .08,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = .167,                       ### Mean or NA
  sd = .12,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = .140,                       ### Mean or NA
  sd = 0.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.1,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = .140,                       ### Mean or NA
  sd = .08,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = .108,                       ### Mean or NA
  sd = .06,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",      ### Name of relevant subsample, or NA
  mean = .195,                       ### Mean or NA
  sd = .12,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers exposed",      ### Name of relevant subsample, or NA
  mean = .160,                       ### Mean or NA
  sd = 0.7,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers unexposed",      ### Name of relevant subsample, or NA
  mean = 0.0,                       ### Mean or NA
  sd = 0.01,                         ### Standard deviation, or NA
  comment = "extracted from Table 1, page 505"  ### Comment or NA
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
  variable = "Drinks before a week",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Total # standard drinks per week, 3 months before pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking more before",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per month",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Percent drinking more (than current at interview) in months before becoming pregnant (%)"                      ### Comment, as text; or NA
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
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Average # standard drinks per week during pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a weekend",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "weekendday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "a weekend",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Average # standard drinks consumed on Friday-Sunday during pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during Mo-Thu",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "4 days a week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Average # standard drinks consumed Mo-Thurs during pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during a day",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day during pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 3+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
 ## values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
 ## labels = c('3 or more drinks per occasion', '5 or more drinks per occasion'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Binge, 3 drinks per occasion during pregnancy (% yes)"                      ### Comment, as text; or NA
);
 
   res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during 5+",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
 ## values = c(1, 2),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
 ## labels = c('3 or more drinks per occasion', '5 or more drinks per occasion'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 1, p. 505. Binge, 5 drinks per occasion during pregnancy (% yes)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, first trimester, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, second trimester, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, third trimester, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking days current a week",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking days during a week",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 507. number of drinking days per week, during pregnancy, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking days during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 507. Number of drinking days per week, 1st trimester, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking days during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 507. Number of drinking days per week, 2nd trimester, Mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking days during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 2, p. 507. Number of drinking days per week, 3rd trimester, Mean (SD)"                      ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester(BAC)",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, first trimester, Mean (SD), peak BAC (estimated) via BACCuS technique"                      ### Comment, as text; or NA
);
 
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester(BAC)",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, second trimester, Mean (SD), peak BAC (estimated)via BACCuS technique"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester(BAC)",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")  
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = c('interview', 'self-report'),        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "drinking day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks containing alcohol were measured in standard, American ethanol units
equalling 0.5 ounces of absolute alcohol: 340 ml can/bottle of beer (5% ethanol),
120 ml of wine (11% ethanol), 95 ml of wine (13.5% ethanol), or 44 ml of distilled
spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 1, p. 505. drinks consumed per drinking day, third trimester, Mean (SD), peak BAC (estimated)via BACCuS technique"                      ### Comment, as text; or NA
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