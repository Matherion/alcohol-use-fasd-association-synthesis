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
res$bibTexKey <- "May2005"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

First grade children were screened for FAS. Mothers of children with physical symptoms of FAS were located and interviewed. N64 children with FAS, 53 mothers were interviewed. All children (besides the once suspected to have FAS) became control children. N 116 control mothers were included. Questions were asked using a time line follow back method. 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingControls <- "schoolyear child";   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "school"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with FAS"

### Description of geography of sample, in text
res$sample$geography <- "South Africa"

### Study year, in text
res$sample$year <- NA;
res$sample$startyear <- 1999;
res$sample$endyear <- 2001;

### Sample size, as a number
res$sample$size <- 53 + 116;		### 53 case mothers, 116 control mothers

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 53                              ### Additional variables specified as univariate data for this subsample
);

 res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 116                              ### Additional variables specified as univariate data for this subsample
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
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 69.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Alcohol consumption during the past week yes/no. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Consumes alcohol: current",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 21.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Alcohol consumption during the past week yes/no. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 66.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking current",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 30.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 12.6,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 13.1,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current alcohol consumption no. drinks per week. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 1.0,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 2.9,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current alcohol consumption no. drinks per week. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 27.5,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 32.0,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current tobacco use",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 9.3,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 17.1,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 69.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current binge drinking (3+ drinks) 1 or more days during past week. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Binge current",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 5.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current binge drinking (3+ drinks) 1 or more days during past week. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption a weekend",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 11.1,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 11.1,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current use of alcohol weekend no. drinks. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current alcohol consumption a weekend",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = 0.9,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = NA,               ### Percentage that endorsed 1, or NA. 
  sd = 2.7,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Current use of alcohol weekend no. drinks. Extracted from Table 3, page 1194"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Proportion alcohol consumed weekend",       ### Name of variable this result pertains to
#   subsample = "Case mothers",      ### Name of relevant subsample, or NA
#   value = NA,                      ### Value this result pertains to
#   moment = 1,                      ### Measurement moment this datapoint pertains to
#   minimum = NA,                     ### Minimum or NA
#   maximum = NA,                     ### Maximum or NA
#   median = NA,                     ### Median or NA
#   mean = NA,                       ### Mean or NA
#   n = 53,                           ### If the total N is < relevant sample size
#   percentage = 88.1,               ### Percentage that endorsed 1, or NA. 
#   sd = NA,                         ### Standard deviation, or NA
#   qualitative = NA,                ### Description (qualitative research)
#   comment = "Proportion alcohol consumed during weekends. Extracted from Table 3, page 1194"  ### Comment or NA
# );
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Proportion alcohol consumed weekend",       ### Name of variable this result pertains to
#   subsample = "Control mothers",      ### Name of relevant subsample, or NA
#   value = NA,                      ### Value this result pertains to
#   moment = 1,                      ### Measurement moment this datapoint pertains to
#   minimum = NA,                     ### Minimum or NA
#   maximum = NA,                     ### Maximum or NA
#   median = NA,                     ### Median or NA
#   mean = NA,                       ### Mean or NA
#   n = 109,                           ### If the total N is < relevant sample size
#   percentage = 90.0,               ### Percentage that endorsed 1, or NA. 
#   sd = NA,                         ### Standard deviation, or NA
#   qualitative = NA,                ### Description (qualitative research)
#   comment = "Proportion alcohol consumed during weekends. Extracted from Table 3, page 1194"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 19.4,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 1.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 2.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 28.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 9.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 67.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 61.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA	
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 15.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 10.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 5.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 3.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 25.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 70.4,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking before",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 75.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 30.3,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Drinking before",       ### Name of variable this result pertains to
 # subsample = "Case mothers",      ### Name of relevant subsample, or NA
  #value = 5,                      ### Value this result pertains to
  #moment = 1,                      ### Measurement moment this datapoint pertains to
  #minimum = NA,                     ### Minimum or NA
  #maximum = NA,                     ### Maximum or NA
  #median = NA,                     ### Median or NA
  #mean = NA,                       ### Mean or NA
  #n = 53,                           ### If the total N is < relevant sample size
  #percentage = 92.4,               ### Percentage that endorsed 1, or NA. 
  #sd = NA,                         ### Standard deviation, or NA
  #qualitative = NA,                ### Description (qualitative research)
  #comment = "Extracted from Table 3, page 1194"  ### Comment or NA#
#);

##res$univariate[[length(res$univariate) + 1]] <- list(
# # variable = "Drinking before",       ### Name of variable this result pertains to
#  #subsample = "Control mothers",      ### Name of relevant subsample, or NA
#  #value = 5,                      ### Value this result pertains to
#  #moment = 1,                      ### Measurement moment this datapoint pertains to
#  #minimum = NA,                     ### Minimum or NA
#  #maximum = NA,                     ### Maximum or NA
#  #median = NA,                     ### Median or NA
#  #mean = NA,                       ### Mean or NA
#  #n = 109,                           ### If the total N is < relevant sample size
#  #percentage = 19.5,               ### Percentage that endorsed 1, or NA. 
#  #sd = NA,                         ### Standard deviation, or NA
#  #qualitative = NA,                ### Description (qualitative research)
#  #comment = "Extracted from Table 3, page 1194"  ### Comment or NA
##);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 54.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 11.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 5.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 3.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 32.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 4.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 78.4,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 58.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 14.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 13.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 10.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 5.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 2.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 22.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 71.3,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 0.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);




res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 52.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 8.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 5.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 2.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 34.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 2.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 80.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 6.3,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 62.3,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 13.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 9.4,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 9.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 5.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 3.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 22.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 72.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during second trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 54.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 5.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 1.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 5.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 32.1,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 85.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 3.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1194"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 64.7,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 12.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 7.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 9.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 3.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 3.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 23.5,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 73.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking during third trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.8,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current drinker and smoker",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 73.6,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current drinker and smoker",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 11.2,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Extracted from Table 3, page 1195"  ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol abuse",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 53,                           ### If the total N is < relevant sample size
  percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Ever had a problem with alcohol abuse. Extracted from Table 3, page 1194"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol abuse",       ### Name of variable this result pertains to
  subsample = "Control mothers",      ### Name of relevant subsample, or NA
  value = NA,                      ### Value this result pertains to
  moment = 1,                      ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                     ### Median or NA
  mean = NA,                       ### Mean or NA
  n = 109,                           ### If the total N is < relevant sample size
  percentage = 1.9,               ### Percentage that endorsed 1, or NA. 
  sd = NA,                         ### Standard deviation, or NA
  qualitative = NA,                ### Description (qualitative research)
  comment = "Ever had a problem with alcohol abuse. Extracted from Table 3, page 1194"  ### Comment or NA
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
  variable = "Consumes alcohol: current",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                  ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = NA,
  calculatednrOfUnitsInUnit = NA,
  specificationTimeframe = NA,  ### "per week", "per month", "per year"
  aboutBinging = FALSE,             ### TRUE if the variable is about binge drinking
  aboutAlcoholism = NA,
  
  description = "340 mL of beer, 120 mL of wine, or 44 mL of distilled spirits (5%, 11%, and 43% ethanol, respectively)",                 ### Description, as text; or NA
  comment = "yes/no question"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking current",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                  ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           ### "ml", "mg", "oz"
  specificationTimeframe = NA,  ### "per week", "per month", "per year"
  aboutBinging = FALSE,             ### TRUE if the variable is about binge drinking
  aboutAlcoholism = NA,
  
  description = NA,                 ### Description, as text; or NA
  comment = "yes/no question"                      ### Comment, as text; or NA
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
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Drinks were measured in standard ethanol units: 340 mL of beer, 120 mL of
wine, or 44 mL of distilled spirits (5%, 11%, and 43% ethanol, respectively)."                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current tobacco use",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = NA,                     ### "frequency" or "units"
  intensitySpecification = "weekday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = "g",           			 ### "ml", "mg", "oz"
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "g per week"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Binge current",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
dataCollectionMethod = "interview",          ### "self-report" or "interview" or "record documentation"
  timeframe = "concurrent",                  ### "retrospective" vs "concurrent" vs "unknown"
  period = "current",                        ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units" or "any"
  intensitySpecification = "any day",                  ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,          			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "days per week",  ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,					 ### TRUE if the variable is about alcoholism
  
  description = NA,                  		 ### Description, as text; or NA
  comment = "Binge is 3 drinks or more"      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current alcohol consumption a weekend",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
  period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "units",                     ### "frequency" or "units"
  intensitySpecification = "weekendday",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = "ml",           			 ### "ml", "mg", "oz"
  specificationUnits = "units",						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "ml", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43)),	 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  calculatedunitUnits = "g",
  calculatednrOfUnitsInUnit = mean(c(340*.05, 120*.11, 95*.135, 44*.43))*.8,	### 12.4g
  specificationTimeframe = "weekend",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Drinks were measured in standard ethanol units: 340 mL of beer, 120 mL of
wine, or 44 mL of distilled spirits (5%, 11%, and 43% ethanol, respectively)."                      ### Comment, as text; or NA
);

# res$variable[[length(res$variable) + 1]] <- list(
#   variable = "Proportion alcohol consumed weekend",             ### Replace 'example' with variable name
#   moment = 1,                       ### moment this variable was measured/manipulated
#   type = "question",                ### "question", "aggregate", or "manipulation"
#   datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#   values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
#   labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
#   
#  
# ####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
#   dataCollectionMethod = "interview",        ### "self-report" or "interview"
#   timeframe = "concurrent",                   ### "retrospective" vs "concurrent"
#   period = "current",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
#   varType = "units",                     ### "frequency" or "units"
#   intensitySpecification = "weekend",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
#   specificationUnits = "mg",           			 ### "ml", "mg", "oz"
#   specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
#   aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
#   aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
#   description = NA,                 ### Description, as text; or NA
#   comment = "percentage of people who drink during weekends"                      ### Comment, as text; or NA
# );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before",             ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same vs current use',
			 'drank less',
			 'drank more',
			 'did not drink',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "before",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 5. Before pregnancy, % 'drank about the same vs current use', 'drank less', 'drank more', 'did not drink', 'stopped during this period'),"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking before",             ### Replace 'example' with variable name
  recodeToCategory = "Smoking before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same vs current use',
			 'smoked less',
			 'smoked more',
			 'did not smoke',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "before",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6. Before pregnancy, % ('smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period'), "    ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during",             ### Replace 'example' with variable name
  recodeToCategory = "Smoking during",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6. Smoking During first trimester of pregnancy, % "                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same vs current use',
			 'drank less',
			 'drank more',
			 'did not drink',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 5. During first trimester of pregnancy, % 'drank about the same vs current use', 'drank less', 'drank more','did not drink', 'stopped during this period'"  ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during first trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Smoking first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same vs current use',
			 'smoked less',
			 'smoked more',
			 'did not smoke',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6.During first trimester of pregnancy, % 'smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period'"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during second trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same vs current use',
			 'drank less',
			 'drank more',
			 'did not drink',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6.During second trimester of pregnancy, % 'smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during second trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Smoking second trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same vs current use',
			 'smoked less',
			 'smoked more',
			 'did not smoke',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6. During second trimester of pregnancy, % 'smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during third trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('drank about the same vs current use',
			 'drank less',
			 'drank more',
			 'did not drink',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6.During thrd trimester of pregnancy, % 'smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking during third trimester",             ### Replace 'example' with variable name
  recodeToCategory = "Smoking third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('smoked about the same vs current use',
			 'smoked less',
			 'smoked more',
			 'did not smoke',
			 'stopped during this period'),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
    
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table 3, p. 6. During third trimester of pregnancy, % 'smoked about the same vs current use', 'smoked less', 'smoked more', 'did not smoke', 'stopped during this period"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol abuse",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "other",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = TRUE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "yes/no question"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current drinker and smoker",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
   
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "other",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "any",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = TRUE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "yes/no question"                      ### Comment, as text; or NA
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