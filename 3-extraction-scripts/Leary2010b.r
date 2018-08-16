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
res$bibTexKey <- "Leary2010b"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- " Study to survey alcohol behaviour before, during pregnancy and early infancy in Australian Largest State Study (RASCALS). 
This includes a population based surveillance system of all births in WA, non-indigenous. Information about maternal alcohol was collected 3 months after birth, retrospective for each trimester separately.



";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingMethod <- "retrospective";     ### 'prospective' vs 'retrospective'
res$sample$samplingAselect <- TRUE; ### can also be TRUE
res$sample$samplingControls <- c('age, birth year', 'non-indigenous');   ### NA for prospective designs; list of
                                     ### variables on which controls were matched,
                                     ### or "none" when controls were not matched.
                                     ### For example, c("SES mother", "age child");
res$sample$recruitmentSetting <- "records"; ## Is "records", "school", "population", "hospital", or NA

### Sample Method
res$sample$descent <- 'non-native'; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Maternal characteristics of mothers of children with ARBD"

### Description of geography of sample, in text
res$sample$geography <- "Australia"

### Study year, in text
res$sample$year <- NA;
res$sample$startyear <- 1995;
res$sample$endyear <- 1997;

### Sample size, as a number
res$sample$size <- 4714;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[["Case mothers"]] <- list(    ### Create object for this subsample
  description = NA,
  size = NA                              ### It is not clear what the N is as it seems to differ per question, see table 1, page 300
 );

 res$subsample[["Control mothers no ARBD"]] <- list(    ### Create object for this subsample
  comment = "total of mothers",
  size = NA                              ### It is not clear what the N is as it seems to differ per question, see table 1, page 300
 );
 
#  res$subsample[["Control mothers any birth defect"]] <- list(    ### Create object for this subsample
#   description = NA,
#   size = NA                              ### It is not clear what the N is as it seems to differ per question, see table 1, page 300
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

### not applicable for this article. Only between group differences for one variable were calculated

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 919,                           ### If the total N is < relevant sample size
  percentage = 1.1,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 919,                           ### If the total N is < relevant sample size
  percentage = 19.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 1,                      ### Value this result pertains to
#   n = 919,                           ### If the total N is < relevant sample size
#   percentage = 6.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1555,                           ### If the total N is < relevant sample size
  percentage = 1.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1555,                           ### If the total N is < relevant sample size
  percentage = 33.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 2,                      ### Value this result pertains to
#   n = 1555,                           ### If the total N is < relevant sample size
#   percentage = 6.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 1289,                           ### If the total N is < relevant sample size
  percentage = 0.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 1289,                           ### If the total N is < relevant sample size
  percentage = 27.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 3,                      ### Value this result pertains to
#   n = 1289,                           ### If the total N is < relevant sample size
#   percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 236,                           ### If the total N is < relevant sample size
  percentage = 0.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 236,                           ### If the total N is < relevant sample size
  percentage = 5.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 4,                      ### Value this result pertains to
#   n = 236,                           ### If the total N is < relevant sample size
#   percentage = 3.4,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 276,                           ### If the total N is < relevant sample size
  percentage = 0.7,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 276,                           ### If the total N is < relevant sample size
  percentage = 5.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 5,                      ### Value this result pertains to
#   n = 276,                           ### If the total N is < relevant sample size
#   percentage = 6.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 134,                           ### If the total N is < relevant sample size
  percentage = 3.7,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 134,                           ### If the total N is < relevant sample size
  percentage = 2.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 6,                      ### Value this result pertains to
#   n = 134,                           ### If the total N is < relevant sample size
#   percentage = 9.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 209,                           ### If the total N is < relevant sample size
  percentage = 1.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 209,                           ### If the total N is < relevant sample size
  percentage = 4.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# 
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 7,                      ### Value this result pertains to
#   n = 209,                           ### If the total N is < relevant sample size
#   percentage = 10.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 105,                           ### If the total N is < relevant sample size
  percentage = 1.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drinking before",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 105,                           ### If the total N is < relevant sample size
  percentage = 2.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Drinking before",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 8,                      ### Value this result pertains to
#   n = 105,                           ### If the total N is < relevant sample size
#   percentage = 4.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 1922,                           ### If the total N is < relevant sample size
  percentage = 0.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 1922,                           ### If the total N is < relevant sample size
  percentage = 40.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 1,                      ### Value this result pertains to
#   n = 1922,                           ### If the total N is < relevant sample size
#   percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1324,                           ### If the total N is < relevant sample size
  percentage = 0.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1324,                           ### If the total N is < relevant sample size
  percentage = 28.1,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 2,                      ### Value this result pertains to
#   n = 1324,                           ### If the total N is < relevant sample size
#   percentage = 5.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 446,                           ### If the total N is < relevant sample size
  percentage = 0.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 446,                           ### If the total N is < relevant sample size
  percentage = 9.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 3,                      ### Value this result pertains to
#   n = 446,                           ### If the total N is < relevant sample size
#   percentage = 5.8,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 64,                           ### If the total N is < relevant sample size
  percentage = 0.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 64,                           ### If the total N is < relevant sample size
  percentage = 1.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 4,                      ### Value this result pertains to
#   n = 64,                           ### If the total N is < relevant sample size
#   percentage = 4.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 67,                           ### If the total N is < relevant sample size
  percentage = 3.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 67,                           ### If the total N is < relevant sample size
  percentage = 1.4,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 5,                      ### Value this result pertains to
#   n = 67,                           ### If the total N is < relevant sample size
#   percentage = 7.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 31,                           ### If the total N is < relevant sample size
  percentage = 3.2,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 31,                           ### If the total N is < relevant sample size
  percentage = 0.7,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 6,                      ### Value this result pertains to
#   n = 31,                           ### If the total N is < relevant sample size
#   percentage = 9.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 49,                           ### If the total N is < relevant sample size
  percentage = 4.1,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 49,                           ### If the total N is < relevant sample size
  percentage = 1.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 7,                      ### Value this result pertains to
#   n = 49,                           ### If the total N is < relevant sample size
#   percentage = 8.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 28,                           ### If the total N is < relevant sample size
  percentage = 0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 28,                           ### If the total N is < relevant sample size
  percentage = 0.6,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during first trimester",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 8,                      ### Value this result pertains to
#   n = 28,                           ### If the total N is < relevant sample size
#   percentage = 7.1,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 1922,                           ### If the total N is < relevant sample size
  percentage = 0.9,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 1,                      ### Value this result pertains to
  n = 1922,                           ### If the total N is < relevant sample size
  percentage = 40.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 1,                      ### Value this result pertains to
#   n = 1922,                           ### If the total N is < relevant sample size
#   percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category are abstinent throughout pregnancy, table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1797,                           ### If the total N is < relevant sample size
  percentage = 1.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 2,                      ### Value this result pertains to
  n = 1797,                           ### If the total N is < relevant sample size
  percentage = 38.1,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 2,                      ### Value this result pertains to
#   n = 1797,                           ### If the total N is < relevant sample size
#   percentage = 6.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink low, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 472,                           ### If the total N is < relevant sample size
  percentage = 1.7,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 3,                      ### Value this result pertains to
  n = 472,                           ### If the total N is < relevant sample size
  percentage = 10.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 3,                      ### Value this result pertains to
#   n = 472,                           ### If the total N is < relevant sample size
#   percentage = 7.0,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 38,                           ### If the total N is < relevant sample size
  percentage = 2.6,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 4,                      ### Value this result pertains to
  n = 38,                           ### If the total N is < relevant sample size
  percentage = 0.8,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 4,                      ### Value this result pertains to
#   n = 38,                           ### If the total N is < relevant sample size
#   percentage = 5.3,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink moderate, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 25,                           ### If the total N is < relevant sample size
  percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 5,                      ### Value this result pertains to
  n = 25,                           ### If the total N is < relevant sample size
  percentage = 0.5,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 5,                      ### Value this result pertains to
#   n = 25,                           ### If the total N is < relevant sample size
#   percentage = 4.0,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 15,                           ### If the total N is < relevant sample size
  percentage = 0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 6,                      ### Value this result pertains to
  n = 15,                           ### If the total N is < relevant sample size
  percentage = 0.3,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 6,                      ### Value this result pertains to
#   n = 15,                           ### If the total N is < relevant sample size
#   percentage = 6.7,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 49,                           ### If the total N is < relevant sample size
  percentage = 2.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 7,                      ### Value this result pertains to
  n = 49,                           ### If the total N is < relevant sample size
  percentage = 1.0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 7,                      ### Value this result pertains to
#   n = 49,                           ### If the total N is < relevant sample size
#   percentage = 8.2,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Case mothers",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 16,                           ### If the total N is < relevant sample size
  percentage = 0,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",      ### Name of relevant subsample, or NA
  value = 8,                      ### Value this result pertains to
  n = 16,                           ### If the total N is < relevant sample size
  percentage = 0.3,               ### Percentage that endorsed 1, or NA. 
  comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
);
# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "Alcohol consumption: during late pregnancy",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",      ### Name of relevant subsample, or NA
#   value = 8,                      ### Value this result pertains to
#   n = 16,                           ### If the total N is < relevant sample size
#   percentage = 12.5,               ### Percentage that endorsed 1, or NA. 
#   comment = "Number of people in this category drink heavy, see table 1 page e845"  ### Comment or NA
# );


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARBD diagnosis",       ### Name of variable this result pertains to
  subsample = "Case mothers",         ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "ARBD diagnosis",       ### Name of variable this result pertains to
  subsample = "Control mothers no ARBD",         ### Name of relevant subsample, or NA
  value = 0,                       ### Value this result pertains to
  comment = NA                      ### Comment or NA
);

# res$univariate[[length(res$univariate) + 1]] <- list(
#   variable = "ARBD diagnosis",       ### Name of variable this result pertains to
#   subsample = "Control mothers any birth defect",         ### Name of relevant subsample, or NA
#   value = 0,                       ### Value this result pertains to
#   comment = NA                      ### Comment or NA
# );

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "ARBD diagnosis",       ### Name of variable this result pertains to
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",               ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = 0:1,          		 	### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('Control', 'ARBD'),		### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  specifiesSubsample = TRUE,

  ####################################### ONLY FOR FAS DIAGNOSIS VARIABLES
  diagnosisMethod = "IOM05",             ### "IOM96", "IOM05", or "4digit", etc
  syndromeCategory =  3,           ### 1 (FAS), 2 (pFAS), 3 (ARBD), 4 (ARND), or 5 (FASD)
  maternalDrinkingConfirmed = "if possible",   ### "never", "required", "if possible"
  caseascertainment = "active"
 );
  

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drinking before", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption before",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5, 6, 7, 8),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('abstinent',
             'low <70g and on one day no more than 2 standard drinks',
             'moderate <70g alcohol per week and 21 to 49g per occasion',
             'moderate and binge less than weekly',
			 'heavy and binge 1 or 2 times a week',
			 'heavy and binge >2 times a week',
			 'heavy <50g per occasion so no binge, 70.1-140.0g a week',
			 'very heavy <50g per occasion so no binge, > 140.1g a week'
			 ),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
		 
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "before",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "g", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = "10",							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table p.3. Before pregnancy Alcohol, N (%). NOTE: about both binge and standard; 1 standard drink is 10g; binge is 5 standard drinks"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during first trimester", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption first trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5, 6, 7, 8),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('abstinent',
             'low <70g and on one day no more than 2 standard drinks',
             'moderate <70g alcohol per week and 21 to 49g per occasion',
             'moderate and binge less than weekly',
			 'heavy and binge 1 or 2 times a week',
			 'heavy and binge >2 times a week',
			 'heavy <50g per occasion so no binge, 70.1-140.0g a week',
			 'very heavy <50g per occasion so no binge, > 140.1g a week'
			 ),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
			 
			  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "1st",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
 # specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "g", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = "10",							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table p.3. First trimester Alcohol N(%). NOTE: about both binge and standard; 1 standard drink is 10g; binge is 5 standard drinks"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol consumption: during late pregnancy", ### Replace 'example' with variable name
  recodeToCategory = "Alcohol consumption third trimester",
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3, 4, 5, 6, 7, 8),           ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c('abstinent',
             'low <70g and on one day no more than 2 standard drinks',
             'moderate <70g alcohol per week and 21 to 49g per occasion',
             'moderate and binge less than weekly',
			 'heavy and binge 1 or 2 times a week',
			 'heavy and binge >2 times a week',
			 'heavy <50g per occasion so no binge, 70.1-140.0g a week',
			 'very heavy <50g per occasion so no binge, > 140.1g a week'
			 ),### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
			  
####################################### ONLY FOR MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = "retrospective",                   ### "retrospective" vs "concurrent"
  period = "late",                      ### "before", "1st", "2nd", "3rd", "during", "after", "other"
  varType = "frequency",                     ### "frequency" or "units"
  intensitySpecification = NA,                   ### NA, "any day", "weekday", "weekendday", "friday", "saturday",  etc
  #specificationUnits = NA,           			 ### "ml", "mg", "oz"
  specificationUnits = NA,						 ### 'g' als het gemiddelde in grammen is; ‘units’ als het gemiddelde (en sd, etc) in aantal glazen is uitgedrukt
  unitUnits = "g", 								 ### ‘g’, ‘ml’, of ‘oz’, en specificeert waarin de auteurs een unit (glas) definiëren
  nrOfUnitsInUnit = "10",							 ### aantal gram (of milligram of ons, etc) dat volgens de auteurs een unit (standaard glas) is
  specificationTimeframe = NA,  				 ### "per week", "per month", "per year"
  aboutBinging = FALSE,             			 ### TRUE if the variable is about binge drinking
  aboutAlcoholism = FALSE,				### TRUE if the variable is about alcoholism
  description = NA,                 ### Description, as text; or NA
  comment = "Table p.3. Late pregnancy Alcohol N(%). NOTE: about both binge and standard; 1 standard drink is 10g; binge is 5 standard drinks"                      ### Comment, as text; or NA
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