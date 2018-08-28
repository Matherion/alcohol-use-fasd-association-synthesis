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
res$bibTexKey <- "May2017"

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
res$sample$description <- "Second study commenced in 2011"

### Description of geography of sample, in text
res$sample$geography <- "South Africa"

### Study year, in text
res$sample$year <- NA;
res$sample$startyear <- 2011;
res$sample$endyear <- NA;

### Sample size, as a number
res$sample$size <- NA;    ### 30 FASD cases

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers FAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 118                             ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers pFAS"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 91                             ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Case mothers ARND"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 55                             ### Additional variables specified as univariate data for this subsample
);

res$subsample[["Control mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = 100                              ### Additional variables specified as univariate data for this subsample
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
  variable = "Av_drinks_day_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 5.9,                        ### Mean or NA
  sd = 5.8,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 2.9,                        ### Mean or NA
  sd = 4.3,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 6.1,                        ### Mean or NA
  sd = 5.9,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_pregn",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 1.7,                        ### Mean or NA
  sd = 3.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 1.7,                        ### Mean or NA
  sd = 1.6,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 0.8,                        ### Mean or NA
  sd = 1.0,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 1.5,                        ### Mean or NA
  sd = 1.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_pregn",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 0.4,                        ### Mean or NA
  sd = 0.7,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_3+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 73.7,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_3+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 53.8,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_3+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 94.2,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_3+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 34.0,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_5+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 65.3,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_5+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 39.6,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_5+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 57.7,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinks_5+_oc_pregn",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 26.0,
  comment = "extracted from table 4 p.10"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 81.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 67.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 100.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_first_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 43.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 72.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 53.8,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 92.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_first_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 31.3,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 63.5,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 38.5,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 54.9,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_first_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 23.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 8.4,                        ### Mean or NA
  sd = 5.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 6.6,                        ### Mean or NA
  sd = 4.8,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 7.9,                        ### Mean or NA
  sd = 7.1,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_first_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 5.7,                        ### Mean or NA
  sd = 3.9,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_week_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 2.4,                        ### Mean or NA
  sd = 1.5,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_week_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 1.8,                        ### Mean or NA
  sd = 1.2,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_week_first_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 1.8,                        ### Mean or NA
  sd = 1.3,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_week_first_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 1.5,                        ### Mean or NA
  sd = 0.7,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 71.4,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 45.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 83.3,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_second_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 25.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 58.3,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 35.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 74.5,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_second_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 18.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 53.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 25.3,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 41.2,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_second_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 14.1,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 8.5,                        ### Mean or NA
  sd = 5.7,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 6.7,                        ### Mean or NA
  sd = 5.3,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 7.4,                        ### Mean or NA
  sd = 6.3,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_second_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 6.6,                        ### Mean or NA
  sd = 4.8,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 2.4,                        ### Mean or NA
  sd = 1.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 1.8,                        ### Mean or NA
  sd = 1.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_second_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 1.9,                        ### Mean or NA
  sd = 1.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_second_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 1.7,                        ### Mean or NA
  sd = 0.8,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);




res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 60.6,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 24.5,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 59.3,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_third_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 13.1,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 50.9,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 16.5,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 47.1,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_3+_third_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 11.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  percentage = 44.8,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  percentage = 12.1,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  percentage = 29.4,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drank_5+_third_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  percentage = 10.0,
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 8.9,                        ### Mean or NA
  sd = 5.5,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 7.5,                        ### Mean or NA
  sd = 6.8,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 7.3,                        ### Mean or NA
  sd = 6.6,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinks_day_third_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 8.1,                        ### Mean or NA
  sd = 5.6,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",                   ### Name of relevant subsample, or NA
  mean = 2.5,                        ### Mean or NA
  sd = 1.5,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers pFAS",                   ### Name of relevant subsample, or NA
  mean = 1.7,                        ### Mean or NA
  sd = 1.4,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_third_trim",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",                   ### Name of relevant subsample, or NA
  mean = 2.1,                        ### Mean or NA
  sd = 1.6,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Av_drinkday_third_trim",       ### Name of variable this result pertains to
  subsample = "Control mothers",                   ### Name of relevant subsample, or NA
  mean = 2.0,                        ### Mean or NA
  sd = 0.7,                          ### Standard deviation, or NA
  comment = "extracted from table 4 p.11"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers FAS",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pFAS diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
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
  subsample = "Control mothers",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARND diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers ARND",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
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
  diagnosisMethod = "IOM16",             ### "IOM96", "IOM05", or "4digit", etc
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
  diagnosisMethod = "IOM16",             ### "IOM96", "IOM05", or "4digit", etc
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
  diagnosisMethod = "IOM16",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  4,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinks_day_pregn",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "average drinks per day during pregnancy, table 4 p.10",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinkday_pregn",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "drinking days",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "average drinking days during pregnancy, table 4 p.10",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks_3+_oc_pregn",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Consumed 3 drinks or more per occasion during pregnancy, table 4 p.10",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinks_5+_oc_pregn",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "during",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per occasion",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Consumed 5 drinks or more per occasion during pregnancy, table 4 p.10",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_first_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drank during 1st trimester, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_3+_first_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 3+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_5+_first_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 5+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinks_day_first_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per drinking day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinks per drinking day, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinkday_week_first_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinking days per week, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);


  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_second_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drank during 2nd trimester, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);



  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_3+_second_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 3+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_5+_second_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 5+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinks_day_second_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per drinking day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinks per drinking day, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinkday_second_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "2nd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinking days per week, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

   res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_third_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Drank during 2nd trimester, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_3+_third_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 3+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drank_5+_third_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = TRUE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Binged 5+, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinks_day_third_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per drinking day",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinks per drinking day, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
);

  res$variable[[length(res$variable) + 1]] <- list(
  variable = "Av_drinkday_third_trim",     ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")

####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "3rd",               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",               		 ### "frequency" or "units"
  intensitySpecification = "any day",                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = NA, 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = NA,							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = "per week",  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = "Average of drinking days per week, table 4 p.11",                 ### Description, as text; or NA
  comment = "we don't know what 1 standard drink is"                      ### Comment, as text; or NA
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
