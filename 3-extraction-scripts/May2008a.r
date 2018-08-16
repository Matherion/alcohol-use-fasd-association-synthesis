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
res$bibTexKey <- "May2008a"

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
res$sample$samplingControls <- c('study year child');   ### NA for prospective designs; list of
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
res$sample$year <- 2002;

### Sample size, as a number
res$sample$size <- 49 + 15 + 133;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers FAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 49                              ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers pFAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 15                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 133                              ### Additional variables specified as univariate data for this subsample
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
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 65.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 46.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 26.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 3.5,                       ### Mean or NA
  sd = 7.69,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 1.8,                       ### Mean or NA
  sd = 3.74,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = 0.8,                       ### Mean or NA
  sd = 4.06,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 31.7,                       ### Mean or NA
  sd = 40.91,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 19.5,                       ### Mean or NA
  sd = 21.59,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = 10.7,                       ### Mean or NA
  sd = 19.89,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 25.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current a week",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 26.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current a week",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 6.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = 3.5,                       ### Mean or NA
  sd = 7.40,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = 1.8,                       ### Mean or NA
  sd = 3.85,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = 0.8,                       ### Mean or NA
  sd = 3.13,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Percent drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 100.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Percent drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 100.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Percent drinks current a weekend",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  mean = NA,                       ### Mean or NA
  percentage = 72.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 50,
  percentage = 18.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 50,
  percentage = 14.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 50,
  percentage = 64.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 50,
  percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 50,
  percentage = 96.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 60.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 16,
  percentage = 93.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 134,
  percentage = 3.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 134,
  percentage = 3.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 134,
  percentage = 17.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 134,
  percentage = 74.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 134,
  percentage = 24.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 49,
  percentage = 42.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 49,
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 49,
  percentage = 34.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 49,
  percentage = 14.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 23.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 15.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 38.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 23.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 133,
  percentage = 15.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 133,
  percentage = 8.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 133,
  percentage = 12.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 133,
  percentage = 63.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = NA,
  n = 49,
  percentage = 84.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = NA,
  n = 15,
  percentage = 82.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,
  n = 133,
  percentage = 35.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = NA,
  n = 49,
  percentage = 78.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and drinking during",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = NA,
  n = 15,
  percentage = 81.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking and drinking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,
  n = 133,
  percentage = 17.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 49,
  percentage = 75.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 49,
  percentage = 6.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 49,
  percentage = 14.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 49,
  percentage = 4.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 49,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 66.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 15,
  percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 134,
  percentage = 11.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 134,
  percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 134,
  percentage = 5.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 134,
  percentage = 73.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 134,
  percentage = 2.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 49,
  percentage = 58.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 49,
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 49,
  percentage = 16.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 49,
  percentage = 14.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 49,
  percentage = 2.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 53.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 26.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 133,
  percentage = 24.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 133,
  percentage = 9.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 133,
  percentage = 0.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 133,
  percentage = 60.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 133,
  percentage = 3.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 51,
  percentage = 78.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 51,
  percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 51,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 51,
  percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 51,
  percentage = 9.8,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 14,
  percentage = 64.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 14,
  percentage = 14.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 14,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 14,
  percentage = 7.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 14,
  percentage = 14.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 134,
  percentage = 11.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 134,
  percentage = 5.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 134,
  percentage = 0.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 134,
  percentage = 74.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 134,
  percentage = 8.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 49,
  percentage = 62.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 49,
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 49,
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 49,
  percentage = 14.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 49,
  percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 53.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 15,
  percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 134,
  percentage = 11.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 134,
  percentage = 5.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 134,
  percentage = 0.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 134,
  percentage = 74.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 134,
  percentage = 8.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 51,
  percentage = 70.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 51,
  percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 51,
  percentage = 3.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 51,
  percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 51,
  percentage = 13.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 14,
  percentage = 42.9,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 14,
  percentage = 21.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 14,
  percentage = 7.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 14,
  percentage = 7.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 14,
  percentage = 21.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 134,
  percentage = 11.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 134,
  percentage = 2.2,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 134,
  percentage = 3.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 134,
  percentage = 74.6,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 134,
  percentage = 9.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 49,
  percentage = 64.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 49,
  percentage = 8.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 49,
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 49,
  percentage = 14.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 49,
  percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 1,
  n = 15,
  percentage = 40.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 2,
  n = 15,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 3,
  n = 15,
  percentage = 20.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 4,
  n = 15,
  percentage = 26.7,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  value = 5,
  n = 15,
  percentage = 13.3,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,
  n = 133,
  percentage = 23.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,
  n = 133,
  percentage = 9.1,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,
  n = 133,
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,
  n = 133,
  percentage = 62.4,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,
  n = 133,
  percentage = 4.5,               ### Percentage that endorsed 1, or NA. 
  comment = "extracted from Table 4, page 746"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a day",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 5.7,                       ### Mean or NA
  sd = 4.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a day",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 3.5,                       ### Mean or NA
  sd = 1.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks before a day",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 3.7,                       ### Mean or NA
  sd = 2.8,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  percentage = 81.4,               ### Percentage that endorsed 1, or NA. 
  n = 43,
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  percentage = 72.7,               ### Percentage that endorsed 1, or NA. 
  n = 11,
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  percentage = 50.0,               ### Percentage that endorsed 1, or NA. 
  n = 31,
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 5.7,                       ### Mean or NA
  sd = 3.8,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 3.9,                       ### Mean or NA
  sd = 1.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during first trimester a day",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 3.8,                       ### Mean or NA
  sd = 3.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 5.7,                       ### Mean or NA
  sd = 3.7,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 3.2,                       ### Mean or NA
  sd = 1.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during second trimester a day",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 3.7,                       ### Mean or NA
  sd = 3.4,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 5.5,                       ### Mean or NA
  sd = 3.9,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester a day",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 2.7,                       ### Mean or NA
  sd = 2.0,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks during third trimester a day",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 3.7,                       ### Mean or NA
  sd = 3.5,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 0.197,                       ### Mean or NA
  sd = 0.165,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 0.155,                       ### Mean or NA
  sd = 0.072,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 0.102,                       ### Mean or NA
  sd = 0.112,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 0.200,                       ### Mean or NA
  sd = 0.168,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 0.124,                       ### Mean or NA
  sd = 0.094,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 0.084,                       ### Mean or NA
  sd = 0.092,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",      ### Name of relevant subsample, or NA
  n = 43,
  mean = 0.191,                       ### Mean or NA
  sd = 0.161,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",      ### Name of relevant subsample, or NA
  n = 11,
  mean = 0.102,                       ### Mean or NA
  sd = 0.117,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peak estimated BAC third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  n = 31,
  mean = 0.076,                       ### Mean or NA
  sd = 0.094,                         ### Standard deviation, or NA
  comment = "extracted from Table 4, page 745"  ### Comment or NA
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
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
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
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
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
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks current a week",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
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
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
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
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge current a week",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent" 
  period = "current",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Binge 3+ drinks"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks current a weekend",     ### Replace 'example' with variable name
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
  intensitySpecification = "weekendday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "weekend",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percent drinks current a weekend",     ### Replace 'example' with variable name
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
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,					 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
 

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more',
			'did not drink',
			'drank during index pregnancy'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4, p. 745. Drink month before pregnancy (%), 'drank about the same', 'drank less','drank more',	'did not drink','drank during index pregnancy'"     ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking before",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking before", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same',
			'smoked less',
			'smoked more',
			'did not smoke'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "table 4, p.746. Smoking in month before pregnancy (%).'smoked about the same', 'smoked less',	'smoked more',	'did not smoke' "                      ### Comment, as text; or NA
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
  comment = "table 4, p.746. Smoked during index pregnancy (%)"                      ### Comment, as text; or NA
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
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "table 4, p.746. Drank and smoked during index pregnancy (%)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more',
			'did not drink',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = 12.4,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4. 745. drinking during first trimester compared to current (%)'drank about the same', 'drank less',	'drank more','did not drink', 'stopped during trimester'"                      ### Comment, as text; or NA
);
 
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during first trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking first trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same',
			'smoked less',
			'smoked more',
			'did not smoke',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "table 4, p.746. Smoked during index pregnancy, first trimester (as current use) (%)'smoked about the same','smoked less','smoked more','did not smoke','stopped during trimester'"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more',
			'did not drink',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4. 745. drinking during second trimester compared to current (%)'drank about the same', 'drank less',	'drank more','did not drink', 'stopped during trimester'"                      ### Comment, as text; or NA
);
 
 res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during second trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking second trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same',
			'smoked less',
			'smoked more',
			'did not smoke',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "table 4, p.746. Smoked during index pregnancy, second trimester (as current use) (%)'smoked about the same','smoked less','smoked more','did not smoke','stopped during trimester'"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same',
			'drank less',
			'drank more',
			'did not drink',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4. 745. drinking during third trimester compared to current (%)'drank about the same', 'drank less',	'drank more','did not drink', 'stopped during trimester'"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during third trimester",     ### Replace 'example' with variable name
  recodeToCategory = "Smoking third trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same',
			'smoked less',
			'smoked more',
			'did not smoke',
			'stopped during trimester'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "table 4, p.746. Smoked during index pregnancy, third trimester (as current use) (%)'smoked about the same','smoked less','smoked more','did not smoke','stopped during trimester'"                      ### Comment, as text; or NA
);
  
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks before a day",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "a day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4, p. 746. Drinks per drinking day prior to pregnancy - mean(SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge during",     ### Replace 'example' with variable name
  recodeToCategory = "Binge during", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "before",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 746. Binged 3+ during pregnancy (%)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during first trimester a day",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester", 
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",					 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "a day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4, p. 746. drinks per drinking day First trimester - mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during second trimester a day",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
 ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "a day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4, p. 746. drinks per drinking day second trimester - mean (SD)"                      ### Comment, as text; or NA
);
 
  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks during third trimester a day",     ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "a day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drinks were measured in standard ethanol units: 340 ml
can ⁄ bottle of beer (5% ethanol), 120 ml of wine (11% ethanol),
95 ml of wine (13.5% ethanol), or 44 ml of distilled spirits (43% ethanol).",                 ### Description, as text; or NA
  comment = "Table 4, p. 746. drinks per drinking day third trimester - mean (SD)"                      ### Comment, as text; or NA
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
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = NA,               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,	
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 746. Peak BAC estimated First trimester - mean (SD)"                      ### Comment, as text; or NA
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
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = NA,               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 746. Peak BAC estimated second trimester - mean (SD)"                      ### Comment, as text; or NA
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
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent" 
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",               		 ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 # specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 4, p. 746. Peak BAC estimated third trimester - mean (SD)"                      ### Comment, as text; or NA
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