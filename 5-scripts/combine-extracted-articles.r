########################################################################
### Load packages
########################################################################

require('userfriendlyscience');  ### For convenience functions, e.g. 'safeRequire'
safeRequire('here');             ### To easily access files using 'relative paths'
safeRequire('plyr');             ### For easily processing and restructuring data
safeRequire('metafor');          ### For conducting the meta-analysis
safeRequire('ggplot2');          ### For plotting
safeRequire('stringr');          ### For working with strings
safeRequire('devtools');         ### To install metabefor from github repo
### ... Which we then do here:
devtools::install_github("Matherion/metabefor");
require('metabefor');

extractedArticlesPath <- here::here("3-extraction-scripts");
extractionWorkingPath <- here::here("6-intermediate-results");
workingPath <- here::here("6-intermediate-results");

### Set encoding to UTF-8; also see http://stackoverflow.com/questions/19877676/write-utf-8-files-from-r
options("encoding" = "UTF-8");

### Set number of decimals to round to when exporting results
exportPrecision <- 5;

dfToString <- function(df, width = 300, ...) {
  ### Store width
  prevWidth <- getOption('width');
  options(width = width);
  res <- capture.output(print(df, ...));
  options(width = prevWidth);
  return(res);
}

###########################################################################
###########################################################################
### Start processing
###########################################################################
###########################################################################

sink(file.path(workingPath, 'processExtractedFiles-log.txt'));
### Process all extracted articles
fasd_rq2_extraction <- processExtractedFiles(extractedArticlesPath,
                                             allowedValues.variable = c("variable",
                                                                        "moment",
                                                                        "type",
                                                                        "datatype",
                                                                        "values",
                                                                        "labels",
                                                                        "psytype",
                                                                        "dependent",
                                                                        "direction",
                                                                        "parent",
                                                                        "description",
                                                                        "comment",
                                                                        'dataCollectionMethod',
                                                                        'timeframe',
                                                                        'period',
                                                                        'varType',
                                                                        'intensitySpecification',
                                                                        'specificationUnits',
                                                                        'specifiesSubsample',
                                                                        'specificationTimeframe',
                                                                        'aboutBinging',
                                                                        'aboutAlcoholism',
                                                                        'diagnosisMethod',
                                                                        'syndromeCategory',
                                                                        'maternalDrinkingConfirmed',
                                                                        'caseascertainment',
                                                                        'recodeToCategory',
                                                                        'unitUnits',
                                                                        'nrOfUnitsInUnit',
                                                                        'calculatedunitUnits',
                                                                        'calculatednrOfUnitsInUnit'));

sink();

### List all dichotomous behavior measures
fasd_rq2_extraction$output$variable[(fasd_rq2_extraction$output$variable$datatype=='logical' &
                                       !grepl('diagn', fasd_rq2_extraction$output$variable$variable)), 'variable'];

### List all unique categories in those measures
unique(fasd_rq2_extraction$output$variable[(fasd_rq2_extraction$output$variable$datatype=='logical' &
                                       !grepl('diagn', fasd_rq2_extraction$output$variable$variable)), 'variable']);

### For ordinal variables (e.g. "drank less", "drank the same",
### or "drank more"), the datatype was not always updated, so
### sometimes erroneously indicates that a variable has the
### logical datatype (e.g. yes/no, can manifest as a percentage).
### However, the possible values (and their labels) /were/ always
### updated. Therefore, all variables with datatype 'logical', but
### more than two values, should be reset to datatype 'ordinal'.

### View the value labels of all variables with more than
### two labels:
tmpDf <- fasd_rq2_extraction$output$variable[str_count(fasd_rq2_extraction$output$variable$values, "\\|") > 1,
                                             c('labels', 'datatype')];
tmpDf$labels <- substr(tmpDf$labels, 1, 80);
print(tmpDf);

### View the datatypes (redundant now, see lines above)
#fasd_rq2_extraction$output$variable$datatype[str_count(fasd_rq2_extraction$output$variable$values, "\\|") > 1];

### Set the datatype of all these to 'ordinal' (now manually all set correctly, so shouldn't be overwritten)
#fasd_rq2_extraction$output$variable$datatype[str_count(fasd_rq2_extraction$output$variable$values, "\\|") > 1] <- 'ordinal';

### Set NA labels to NA (currently a string)
fasd_rq2_extraction$output$variable$labels[fasd_rq2_extraction$output$variable$labels == "NA"] <- NA;

### If, for a logical variable, a percentage is specified
### as univariate result, but the value to which this
### percentage pertains (i.e. 0 or 1) is NA, it should be 1.
fasd_rq2_extraction$output$univariate[
  fasd_rq2_extraction$output$univariate$datatype=="logical" &
    is.na(fasd_rq2_extraction$output$univariate$value), 'value'] <- 1;

### If, for a logical variable, the labels are NA, the
### variable pertains to whether mothers consumed
### alcohol during a given period.
is.na(fasd_rq2_extraction$output$variable$labels[(fasd_rq2_extraction$output$variable$datatype=='logical')]);

fasd_rq2_extraction$output$variable$period[is.na(fasd_rq2_extraction$output$variable$labels[(fasd_rq2_extraction$output$variable$datatype=='logical')])]

### Add (sub)sample size to every univariate outcome
fasd_rq2_extraction$output$univariate <-
  addSampleInfo(listOfObjects = fasd_rq2_extraction$intermediate$processedObjects,
                dataframe = fasd_rq2_extraction$output$univariate,
                variableToAdd = c('size', 'recruitmentSetting', 'year', 'startyear', 'endyear', 'geography', 'descent', 'samplingMethod', 'samplingAselect', 'recruitmentSetting'));

### Add column to variables dataframe to indicate which
### variables relate to diagnoses
fasd_rq2_extraction$output$variable$dependent <-
  !is.na(fasd_rq2_extraction$output$variable$caseascertainment);

### Set specifiesSubSample to FALSE for all variables where it is NA
fasd_rq2_extraction$output$variable$specifiesSubsample <-
  isTrue(as.logical(fasd_rq2_extraction$output$variable$specifiesSubsample));

### Add this to the univariate dataframe
fasd_rq2_extraction$output$univariate <-
  addVariableInfo(variablesDataframe = fasd_rq2_extraction$output$variable,
                  dataframe = fasd_rq2_extraction$output$univariate,
                  variableToAdd = c('dependent', 'datatype', 'specifiesSubsample'));

### Update the univariate dataframe by adding 1s for all logical variables
### where no values have been specified (omitting the '1' as value is
### shorthand for "this pertains to the category described by the
### variable name", and that means value 1).
fasd_rq2_extraction$output$univariate[
  fasd_rq2_extraction$output$univariate$datatype=='logical', 'value'] <-
  ifelse(is.na(fasd_rq2_extraction$output$univariate[
    fasd_rq2_extraction$output$univariate$datatype=='logical', 'value']),
         1,
    fasd_rq2_extraction$output$univariate[
      fasd_rq2_extraction$output$univariate$datatype=='logical', 'value']);

### Update the univariate dataframe by adding '100' as percentage for all
### logical variables where no percentage has been specified (omitting the
### percentage is shorthand for "everybody in this category has this value").
fasd_rq2_extraction$output$univariate[
  fasd_rq2_extraction$output$univariate$datatype=='logical', 'percentage'] <-
  ifelse(is.na(fasd_rq2_extraction$output$univariate[
    fasd_rq2_extraction$output$univariate$datatype=='logical', 'percentage']),
    100,
    fasd_rq2_extraction$output$univariate[
      fasd_rq2_extraction$output$univariate$datatype=='logical', 'percentage']);

### Update the univariate dataframe by adding rows specifying the
### 'zero category' (when only the 'one category' is specified for logical
### variables, the zero category can be computed from this information).

univariateComplementLogicals <- function(uni,
                                         studyColName = 'study',
                                         subsampleColName = 'subsample',
                                         varnameColName = 'variable',
                                         valueColName = 'value',
                                         percentageColName = 'percentage',
                                         frequencyColName = 'frequency',
                                         specificSampleSizeColName = 'n',
                                         generalSampleSizeColName = 'size',
                                         datatypeColName = 'datatype',
                                         specifiesSubsampleColName = 'specifiesSubsample',
                                         percentageMultiplier = .01,
                                         silent=FALSE) {

  ### First find all rows with values for logical variables
  tmpDf <- uni[uni[[datatypeColName]] == 'logical', ];

  if (!silent) cat0("\n", nrow(tmpDf), " of the ", nrow(uni),
                    " rows contain logical variables.\n");

  tmpDf <- tmpDf[!tmpDf[[specifiesSubsampleColName]], ];

  if (!silent) cat0("\n", nrow(tmpDf), " of these do not specify subsamples.\n");

  ### Process per subsample
  newRows <- ddply(tmpDf, c(studyColName, subsampleColName, varnameColName),
                   function(df,
                            val = valueColName,
                            perc = percentageColName,
                            freq = frequencyColName,
                            spec = specificSampleSizeColName,
                            gen = generalSampleSizeColName,
                            percMultiplier = percentageMultiplier) {
                     if (nrow(df) == 1) {
                       ### Flip value
                       df[[val]] <- as.numeric(!df[[val]]);
                       ### Flip percentage
                       if (!is.na(df[[perc]])) {
                         df[[perc]] <- (1/percMultiplier) *
                           (1 - (percMultiplier * as.numeric(df[[perc]])));
                       }
                       ### Flip frequency, if it's in the dataframe
                       if (freq %in% names(df)) {
                         if (!is.na(df[[freq]])) {

                           n <- ifelse(is.na(df[[spec]]),
                                       df[[gen]],
                                       df[[spec]]);

                           df[[freq]] <- n - df[[freq]] ;

                         }
                       }
                       ### Return flipped row
                       return(df);
                     }
                   });

  if (!silent) cat0("\nGenerated ", nrow(newRows), " new rows.\n");

  return(rbind.fill(uni, newRows));

}

### Execute this function
fasd_rq2_extraction$output$univariate <-
  univariateComplementLogicals(fasd_rq2_extraction$output$univariate);

### Update the univariate dataframe by adding the frequency wherever possible
univariateToFrequencies <- function(uni, percentageMultiplier = .01,
                                    percentageColName = 'percentage',
                                    specificSampleSize = 'n',
                                    generalSampleSize = 'size') {
  return(ifelse(!is.na(uni$percentage),
                ifelse(!is.na(uni$n),
                       percentageMultiplier * uni$percentage * uni$n,
                       percentageMultiplier * uni$percentage * uni$size),
                NA));
}

### Update the univariate dataframe by adding the frequency wherever possible
if (is.null(fasd_rq2_extraction$output$univariate$frequency)) {
  fasd_rq2_extraction$output$univariate$frequency <-
           univariateToFrequencies(fasd_rq2_extraction$output$univariate);
  } else {
  fasd_rq2_extraction$output$univariate$frequency <-
    ifelse(is.na(fasd_rq2_extraction$output$univariate$frequency),
           univariateToFrequencies(fasd_rq2_extraction$output$univariate),
           fasd_rq2_extraction$output$univariate$frequency);
}

### Overview of data to extract
fasd_rq2_extraction$output$univariate[, c('study', 'variable', 'subsample', 'percentage', 'n', 'size')]

#univariateBackup <- fasd_rq2_extraction$output$univariate;
#fasd_rq2_extraction$output$univariate <- univariateBackup;
#fasd_rq2_extraction$output$univariate <-
#  fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$datatype=='logical', ];

for (currentRow in 1:nrow(fasd_rq2_extraction$output$univariate)) {
  if (is.na(fasd_rq2_extraction$output$univariate[currentRow, 'dependent'])) {
    warning("\nFor row ", currentRow, ", 'dependent' is NA! Skipping this row:\n",
            paste0(fasd_rq2_extraction$output$univariate[currentRow,
                                                         c('study',
                                                           'dependent',
                                                           'subsample',
                                                           'variable')],
                   collapse=", "));
  } else if (fasd_rq2_extraction$output$univariate[currentRow, 'dependent'] == FALSE) {

     ### For some reason, a line with only NA's is added sometimes, so remove it.
     ### Also, take only unique values (because sometimes, a control group
     ### doubles for several dependent variables).

     if (is.na(fasd_rq2_extraction$output$univariate[currentRow, 'study'])) {
       warning("\nFor row ", currentRow, ", 'study' is NA! Skipping this row:\n",
               paste0(fasd_rq2_extraction$output$univariate[currentRow,
                                                            c('study',
                                                              'dependent',
                                                              'subsample',
                                                              'variable')],
                      collapse=", "));
     } else if (is.na(fasd_rq2_extraction$output$univariate[currentRow, 'subsample'])) {
       warning("\nFor row ", currentRow, ", 'subsample' is NA! Skipping this row:\n",
               paste0(fasd_rq2_extraction$output$univariate[currentRow,
                                                            c('study',
                                                              'dependent',
                                                              'subsample',
                                                              'variable')],
                      collapse=", "));
     }

     depVarValue <-
       unique(na.omit(fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$study == fasd_rq2_extraction$output$univariate[currentRow, 'study'] &
                                               fasd_rq2_extraction$output$univariate$subsample == fasd_rq2_extraction$output$univariate[currentRow, 'subsample'] &
                                               fasd_rq2_extraction$output$univariate$dependent == TRUE, 'value']));

     depVarName <- unique(na.omit(fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$study == fasd_rq2_extraction$output$univariate[currentRow, 'study'] &
                                                                                     fasd_rq2_extraction$output$univariate$subsample == fasd_rq2_extraction$output$univariate[currentRow, 'subsample'] &
                                                                                     fasd_rq2_extraction$output$univariate$dependent == TRUE, 'variable']));

     if (length(depVarValue) < 1) {
       cat0("\nFor row ", currentRow, ", study '", as.character(fasd_rq2_extraction$output$univariate[currentRow, 'study']),
            "', subsample '", fasd_rq2_extraction$output$univariate[currentRow, 'subsample'],
            "', and variable '", fasd_rq2_extraction$output$univariate[currentRow, 'variable'],
            "', no value found for 'dependent'! Doing nothing.\n");
     } else if (length(depVarValue) > 1) {
       cat0("\nFor row ", currentRow, ", study '", as.character(fasd_rq2_extraction$output$univariate[currentRow, 'study']),
            "', subsample '", fasd_rq2_extraction$output$univariate[currentRow, 'subsample'],
            "', and variable '", fasd_rq2_extraction$output$univariate[currentRow, 'variable'],
            "', found values ", vecTxt(depVarValue), "! Doing nothing.\n");

     } else if (length(depVarValue) == 1) {
       cat0("\nFor row ", currentRow, ", study '", as.character(fasd_rq2_extraction$output$univariate[currentRow, 'study']),
            "', subsample '", fasd_rq2_extraction$output$univariate[currentRow, 'subsample'],
            "', and variable '", fasd_rq2_extraction$output$univariate[currentRow, 'variable'],
            "', found value '", depVarValue, "' for variable '",
            depVarName, "'; inserting it.\n");

       tryCatch({
           fasd_rq2_extraction$output$univariate[currentRow, 'depVarValue'] <- depVarValue;
           fasd_rq2_extraction$output$univariate[currentRow, 'depVarName'] <- depVarName;
       },
                error = function(e) {
                  str(e);
                  cat0("Encountered error '", e$message, "'!\n");
                });
     }
   }
}

### For every subsample, check which value they should get for each of the
### dependent variables
### First build a list of subsamples in each study
fasd_rq2_extraction$output$subsamples <- data.frame();
for (currentStudyObjectName in names(fasd_rq2_extraction$intermediate$processedObjects)) {
  fasd_rq2_extraction$output$subsamples <- rbind.fill(fasd_rq2_extraction$output$subsamples,
                                                 cbind(rep(currentStudyObjectName,
                     length(fasd_rq2_extraction$intermediate$processedObjects[[currentStudyObjectName]]$subsample)),
                 ldply(fasd_rq2_extraction$intermediate$processedObjects[[currentStudyObjectName]]$subsample,
                       as.data.frame)));
}
colnames(fasd_rq2_extraction$output$subsamples)[1] <- 'study';
colnames(fasd_rq2_extraction$output$subsamples)[2] <- 'subsample';

### Now we add the values on those dependent variables for each subsample
fasd_rq2_extraction$output$subsamples <-
  merge(fasd_rq2_extraction$output$subsamples,
        fasd_rq2_extraction$output$univariate[
          fasd_rq2_extraction$output$univariate$dependent==TRUE,
          c("study", "subsample", "variable", "value")],
        by=c("study", "subsample"), all=TRUE);

################################################################################
### mergeSubSamples merges subsamples.
################################################################################

mergeSubSamples <- function(uni, study, firstSubSampleName,
                            secondSubSampleName, newSubSampleName,
                            replace = TRUE,
                            NAmeanReplacement = 0,
                            NAsdReplacement = 0,
                            NAfreqReplacement = 0,
                            studyColName = 'study',
                            subsampleColName = 'subsample',
                            variableColName = 'variable',
                            valueColName = 'value',
                            silent=FALSE) {

  ### Select all rows for this study and these control groups
  rowsWithMergableSubsamples <-
    isTrue((uni[, studyColName] == study) &
             (uni[, subsampleColName] %in% c(firstSubSampleName, secondSubSampleName)));

  merged <- uni[rowsWithMergableSubsamples, ];

  merged$temporaryVariableValueRowForMerging <-
    paste0(merged[, variableColName],
           merged[, valueColName]);

  ### Process dataframe in bits specified by variableColName
  merged <- ddply(merged, 'temporaryVariableValueRowForMerging', function(x) {

    varName <- unique(x$variable);
    datatype <- unique(x$datatype);

    if (nrow(x) == 1) {
      return(x);
    } else if (nrow(x) > 2) {
      print(x);
      stop("More than two rows in the dataframe for variable '",
           varName, "'!");

      ### Note: of course, it's possible to get more than two
      ### levels, for example for categorical variables. In that
      ### case, process per subsample, per variable, and per value.

      ### (Still has to be written.)

    }

    newRow <- data.frame(lapply(x, function(v) {
      if (length(unique(v)) == 1) return(unique(v)) else {
        return(paste(v, collapse="||"));
      }
    }), stringsAsFactors = FALSE);

    sampleSizes <- NULL;
    ### Sum sample sizes.
    if (all(!is.na(x$size))) {
      newRow$size <- sum(x$size);
      sampleSizes <- x$size;
    }
    if (all(!is.na(x$n))) {
      ### n is always more specific/applicable than general sample size
      newRow$n <- sum(x$n);
      sampleSizes <- x$n;
    }
    if (is.null(sampleSizes)) {
      stop("No sample sizes available for variable ", varName, "!");
    }

    if (length(datatype) > 1) {
      stop("More than one datatype (", vecTxt(datatype), ") specified for the same variable (",
           varName, ")!");
    } else if (datatype == 'logical') {
      if (any(is.na(x$frequency))) {
        x$frequency[is.na(x$frequency)] <- NAfreqReplacement;
        if (!silent) cat0("\nFor variable '", varName, "', ",
                ifelse(sum(is.na(x$frequency))<2,
                       "only one frequency is",
                       "no frequencies are"), " available!");
      }
      if (!any(is.na(x$frequency))) {
        ### We have frequencies; simply sum them, then return the new row.
        newRow$frequency <- sum(x$frequency);
      }
    } else if (datatype == 'numeric') {

      ### First average means
      if (any(is.na(x$mean))) {
        x$mean[is.na(x$mean)] <- NAmeanReplacement;
        if (!silent) cat0("\nFor variable '", varName, "', ",
                ifelse(sum(is.na(x$mean))<2,
                       "only one mean is",
                       "no means are"),
                " available! Missing values replaced by ",
                NAmeanReplacement, ".");
      }
      if (!any(is.na(x$mean))) {
        ### We average the means
        newRow$mean <- sum(sampleSizes * x$mean) / sum(sampleSizes);

        ### Then average standard deviations (we need an average mean for that)

        #       sample1 <- Orange[1:17, 2]; sample2 <- Orange[18:35, 2];
        #       n1 <- length(sample1); n2 <- length(sample2);
        #       mean1 <- mean(sample1); mean2 <- mean(sample2);
        #       sd1 <- sd(sample1); sd2 <- sd(sample2);
        #       ### What we're aiming for
        #       mean(Orange[2]); sd(Orange[2])
        #       ### Attempts
        #       (mean3 <- (n1*mean1 + n2*mean2) / (n1 + n2)); # mean
        #       betweenGroupsVariation <- ((mean1 - mean3)^2 + (mean2 - mean3)^2);
        #       (sd3 <- sqrt(((sd1^2 * (n1-1)) + (sd2^2 * (n2-1)) + betweenGroupsVariation) / (n1+n2-2)));

        if (any(is.na(x$sd))) {
          x$sd[is.na(x$sd)] <- NAsdReplacement;
          if (!silent) cat0("\nFor variable '", varName, "', ",
                  ifelse(sum(is.na(x$sd))<2,
                         "only one sd is",
                         "no sd's are"),
                  " available! Missing values replaced by ",
                  NAsdReplacement, ".");
        }
        if (!any(is.na(x$sd))) {

          betweenGroupsVariation <- ((x$mean[1] - newRow$mean)^2 + (x$mean[2] - newRow$mean)^2);
          newRow$sd <-
            sqrt(((x$sd[1]^2 * (sampleSizes[1]-1)) +
                    (x$sd[2]^2 * (sampleSizes[2]-1)) +
                    betweenGroupsVariation) / (sum(sampleSizes)-2));

        }
      }

    }

    newRow$subsample <- newSubSampleName;

    return(newRow);

  });

  merged$temporaryVariableValueRowForMerging <- NULL;

  if (!silent) cat0("\nMerged ", sum(rowsWithMergableSubsamples),
                    " rows with subsamples into ",
                    nrow(merged), " rows with merged subsamples, for variables ",
                    vecTxt(unique(uni[rowsWithMergableSubsamples, 'variable']), useQuote = "'"),
                    ".");

  if (replace) {
    return(rbind.fill(uni[!rowsWithMergableSubsamples, ],
                      merged));
  } else {
    return(merged);
  }

}

### We can merge subsamples
fasd_rq2_extraction$output$univariate <-
  mergeSubSamples(uni = fasd_rq2_extraction$output$univariate,
                  study='May2011b.r',
                  firstSubSampleName = 'Control mothers exposed',
                  secondSubSampleName = 'Control mothers unexposed',
                  newSubSampleName = 'Control mothers');

### We can merge subsamples
fasd_rq2_extraction$output$univariate <-
  mergeSubSamples(uni = fasd_rq2_extraction$output$univariate,
                  study='May2013d.r',
                  firstSubSampleName = 'Control mothers exposed',
                  secondSubSampleName = 'Control mothers unexposed',
                  newSubSampleName = 'Control mothers');

### We can merge subsamples
fasd_rq2_extraction$output$univariate <-
  mergeSubSamples(uni = fasd_rq2_extraction$output$univariate,
                  study='May2013e.r',
                  firstSubSampleName = 'Control mothers exposed',
                  secondSubSampleName = 'Control mothers unexposed',
                  newSubSampleName = 'Control mothers');

### We can merge subsample
fasd_rq2_extraction$output$univariate <-
  mergeSubSamples(uni = fasd_rq2_extraction$output$univariate,
                  study='Suttie2013a.r',
                  firstSubSampleName = 'Control mothers exposed',
                  secondSubSampleName = 'Control mothers unexposed',
                  newSubSampleName = 'Control mothers');


is.naOrNull <- function(vector, na=TRUE, null=TRUE, none=FALSE) {
  return(unlist(lapply(vector, function(x) {
    if (is.null(x)) {
      return(null);
    } else if (is.na(x)) {
      return(na);
    } else {
      return(none);
    }
  })));
}


### Check in which rows the variables have the correct values - we need this
### to find subsamples.
multiVariableMatch <- function(dataframe, namedVector,
                               variableColName = 'variable', valueColName = 'value',
                               subsampleColName = 'subsample') {
  ### Get a list of all potential subsamples
  allSubSamples <- unique(dataframe[, subsampleColName]);
  for (currentVar in names(namedVector)) {
    ### Retain only those subsamples with the right value
    ### for currentVar
    allSubSamples <- intersect(allSubSamples,
                               unique(dataframe[dataframe[, variableColName] == currentVar &
                                                  dataframe[, valueColName] == namedVector[[currentVar]], subsampleColName]));
  }
  return(allSubSamples);
}

### In a univariate dataframe, find which subsamples have different values
### for a given variable (sometimes, subsamples are defined by values of a
### variable, such as Geography. This function finds all other subsamples
### that differ only on that same variable (e.g. Geography) but are the same
### with respect to all other variables (e.g. ethnicity)).
findSubSampleNames <- function(uni, var, subsamples,
                               currentStudy, currentVariable, currentSubSample,
                               silent=FALSE, mustHaveValueFor = 'frequency') {

  if (!silent) cat0("\nFinding SubSampleNames, that is, the names of those ",
                    "subsamples that have a different value on '", currentVariable,
                    "' as current subsample ('", currentSubSample,
                    "'), but the same value on all other variables.\n");

#   print(uni[uni$study == currentStudy & uni$specifiesSubsample,
#             c('study', 'subsample', 'variable', 'value', 'frequency')]);

  subsamplesInStudy <- subsamples[subsamples$study == currentStudy, 'subsample'];
  subSampleSpecifiersInStudy <- var[var$study == currentStudy & var$specifiesSubsample, 'variable'];

  irrelevantSubSampleSpecifiers <- subSampleSpecifiersInStudy[subSampleSpecifiersInStudy != currentVariable];

  if (length(irrelevantSubSampleSpecifiers) == 0) {
    relevantSubSamples <- subsamplesInStudy;
    if (!silent) cat0("\nSubsamples are only specified by '", currentVariable, "'.\n");
    if (!silent) cat0("\nThat means the relevant subsamples are ", vecTxt(relevantSubSamples), ".\n");
    return(relevantSubSamples);
  } else {
    if (!silent) cat0("\nIn addition to '", currentVariable,
                      "', subsamples are also specified by ",
                      vecTxtQ(irrelevantSubSampleSpecifiers),
                      ". That means we must find those subsamples that have the ",
                      "same value on those other specifiers (and only vary on ",
                      currentVariable, ").\n");

    ### Look in univariate for the value of this subsample on each of
    ### those other specifiers.
    currentSubSampleValues <- c();
    for (currentIrrelevantSubSampleSpecifier in irrelevantSubSampleSpecifiers) {

      print(uni[isTrue(uni$study == currentStudy &
                         uni$subsample == currentSubSample &
                         uni$variable == currentIrrelevantSubSampleSpecifier),
                c('study', 'subsample', 'variable', 'value', 'frequency')]);

      ### Get value we want for current variable
      currentDesiredValue <- uni[isTrue(uni$study == currentStudy &
              uni$subsample == currentSubSample &
              uni$variable == currentIrrelevantSubSampleSpecifier), 'value'];

      ### Make sure it's exactly one value
      if (length(currentDesiredValue) == 0) {
        if (!silent) cat0("\nFor '", currentIrrelevantSubSampleSpecifier,
                          "', no matching value was found. Aborting.\n");
        return(NA);
      } else if (length(currentDesiredValue) > 1) {
        if (!silent) cat0("\nFor '", currentIrrelevantSubSampleSpecifier,
                          "', more than one value was found (",
                          vecTxtQ(currentDesiredValue), "). Aborting.\n");
        return(NA);
      } else {
        ### Store value we want
        currentSubSampleValues[currentIrrelevantSubSampleSpecifier] <- currentDesiredValue;
      }
    }

    ### Now get all lines from the univariate dataframe of the current study that have
    ###  - those values for those variables
    ###  - a 'mustHaveValueFor' value of currentVariable

    subSamplesWithSameValueOnIrrelevantSubSampleSpecifiers <-
      unique(uni[isTrue((uni$study == currentStudy) &
                          (uni$subsample %in% multiVariableMatch(uni[uni$study == currentStudy, ],
                                                                 currentSubSampleValues))), 'subsample']);

    ### 2015-05-09: Error in processing a study; it seems to extract the wrong
    ### subsamples with values for the relevant variable, so I'm rewriting this
    ### bit.
#     subSamplesWithValuesForRelevantVariable <-
#       unique(uni[isTrue((uni[uni$variable == currentVariable, 'study'] == currentStudy) &
#                           !is.na(uni[uni$variable == currentVariable, mustHaveValueFor])), 'subsample']);
    subSamplesWithValuesForRelevantVariable <-
      unique(uni[isTrue((uni[, 'variable'] == currentVariable) &
                        (uni[, 'study'] == currentStudy) &
                  !is.na(uni[, mustHaveValueFor])), 'subsample']);

    subSamplesWithDesiredValuesForBoth <- intersect(subSamplesWithSameValueOnIrrelevantSubSampleSpecifiers,
                                                    subSamplesWithValuesForRelevantVariable);

    if (!silent) cat0(paste0("\nThis is the intersection of the list with subsamples for which values were extracted ",
                      "for the variables that are irrelevant subsample specifiers (these specifiers are ",
                      vecTxtQ(irrelevantSubSampleSpecifiers),
                      " and the subsamples with values for those variables are ",
                      vecTxtQ(subSamplesWithSameValueOnIrrelevantSubSampleSpecifiers),
                      ") and the list with subsamples for which values were extracted for the relevant",
                      " subsample specifier (\"", currentVariable, "\"; the subsamples with values for this",
                      " variable are: ",
                      vecTxtQ(subSamplesWithValuesForRelevantVariable),
                      ").\nThe subsamples that result are: ", vecTxtQ(subSamplesWithDesiredValuesForBoth),
                      " (for both, ",
                      vecTxt(paste0(names(currentSubSampleValues), "=", currentSubSampleValues)), ").\n"));

    return(subSamplesWithDesiredValuesForBoth);

  }

}

getValuesFromSubsample <- function(uni, study, subsamples, variableName, valueColName,
                                   extraCols,
                                   studyColName = 'study', subsampleColName = 'subsample',
                                   variableColName = 'variable') {
  return(uni[isTrue(uni[studyColName] == study &
                      uni[[subsampleColName]] %in% subsamples &
                      uni[variableColName] == variableName), c(extraCols, valueColName)]);
}

### Compute associations from multiple univariate results, if they represent
### values for a variable (e.g. association between geography and age, if
### geography defines the subsamples and age is provided for each subsample).
univariateToAssociation <- function(uni, var, subsamples,
                                    append = TRUE,
                                    associations = NULL,
                                    silent = FALSE) {

  if (!append) {
    res <- data.frame();
  } else {
    if (is.null(associations)) {
      stop("If setting 'append' to TRUE, also provide a dataframe with ",
           "associations in 'associations'!");
    } else if (!is.data.frame(associations)) {
      stop("If setting 'append' to TRUE, provide a dataframe with ",
           "associations in 'associations' (currently provided ",
           "an object of class ", class(associations), ")!");
    } else {
      res <- associations;
    }
  }

  for (currentStudy in unique(uni$study)) {
    if (!silent) {
      cat0("\n\n################################################################################\n");
      cat0("### Processing study: ", currentStudy, "\n");
      cat0("################################################################################\n\n");
    }
    ### Look at each subsample separately
    subSamplesInStudy <- unique(subsamples$subsample[subsamples$study == currentStudy]);
    if (!silent) {
      cat0("This study contains the following subsamples: ", vecTxt(subSamplesInStudy, useQuote="'"), ")\n");
    }
    for (currentSubSample in subSamplesInStudy) {
      if (!silent) {
        cat0("\n################################################################################\n");
        cat0("\nProcessing subsample: ", currentSubSample, "\n");
      }
      dependentVariables <- uni[uni$study==currentStudy &
                                     uni$subsample==currentSubSample &
                                     uni$dependent==TRUE, 'variable'];
      independentVariables <- uni[uni$study==currentStudy &
                                     uni$subsample==currentSubSample &
                                     uni$dependent==FALSE, 'variable'];

      if (!silent) {
        cat0("  (for which we have values for dependent variables: ", vecTxt(unique(dependentVariables),
                                                                             useQuote="'"), "\n");
        cat0("  (and for which we have values for independent variables: ", vecTxt(unique(independentVariables),
                                                                                   useQuote="'"), "\n");
      }
      ### Look at each variable for which we have univariate data separately
      for (currentDependentVariable in unique(dependentVariables)) {

        depVar.dataType <- var[var$study==currentStudy &
                                 var$variable==currentDependentVariable, 'datatype'];
        depVar.specifiesSubSample <- var[var$study==currentStudy &
                                           var$variable==currentDependentVariable, 'specifiesSubsample'];

        if (!silent) {
          cat0("\n########################################\n");
          cat0("\nProcessing dependent variable: '", currentDependentVariable,
               "' (datatype: ", depVar.dataType, ", specifiesSubSample: ",
               depVar.specifiesSubSample, ")\n");
        }

        for (currentIndependentVariable in unique(independentVariables)) {

          indepVar.dataType <- var[var$study==currentStudy &
                                     var$variable==currentIndependentVariable, 'datatype'];

          indepVar.specifiesSubSample <- var[var$study==currentStudy &
                                               var$variable==currentIndependentVariable, 'specifiesSubsample'];

          if (!silent) {
            cat0("\n####################\n");
            cat0("\nProcessing independent variable: '", currentIndependentVariable,
                 "' (datatype: ", indepVar.dataType, ", specifiesSubSample: ",
                 indepVar.specifiesSubSample, ") (study: ", currentStudy, ")\n");
          }

          ### Now there are a number of options:
          ###   Both variables are numeric. In that case, we can't compute any association;
          ###     we just have two means of different variables, both measured in the
          ###     same subsample.
          ###   One variable is numeric and the other is categorical. In that case we
          ###     can conduct a t-test (if the categorical variable is dichotomous)
          ###     or conduct an analysis of variance (if the categorical variable has
          ###     three of more categories). However, this is only possible if we
          ###     have one mean for every level of the categorical variable, which
          ###     is only possible if we have one subsample for each level (or at
          ###     least for two levels), so this needs to be checked first. Then,
          ###     the means and standard deviations should be acquired from those
          ###     subsamples.
          ###   Both variables are categorical. In that case, there are three options:
          ###     None of the two variables' levels correspond to subsamples, we
          ###       can't do anything anymore: we only have the two marginal
          ###       distributions of the crosstable.
          ###     One variable's levels correspond to subsamples. In that case, we
          ###       have to do the following. First, for that variables, identify
          ###       for which subsamples we have univariate data for the other
          ###       variable. Then, combine those percentages into crosstables.
          ###     Both variable's levels correspond to subsamples. In that case,
          ###       we have the cells of the crosstable, so combine those.

          ### First check in which situation we are

          if (!(depVar.specifiesSubSample || indepVar.specifiesSubSample)) {

            ### None of the two specifies a subsample; we can't do anything.
            if (!silent) cat0("\nNone of the two variables' levels specifies subsamples. ",
                              "That means no effect sizes can be derived from the univariate data.\n\n");
            next();

          } else if (depVar.dataType == 'numeric' && indepVar.dataType == 'numeric') {

            ### Both are numeric; we can't do anything.
            if (!silent) cat0("\n\nBoth variables are numeric; that means no effect ",
                              "sizes can be derived from the univariate data.\n\n");
            next();

          } else if ('numeric' %in% c(depVar.dataType, indepVar.dataType) &&
                         any(c(depVar.dataType, indepVar.dataType) %in% c('logical', 'nominal', 'ordinal'))) {

            if (!silent) cat0("\n\nOne of the variables is numeric and the other ",
                              "categorical.\n\n");

            ### We have one numeric and one categorical variable. This means we need to
            ### extract the means from the subsamples specified by the categorical
            ### variable. First make sure that indeed, the categorical variable
            ### is the one specifying the subsamples.

            if ((depVar.dataType %in% c('logical', 'nominal', 'ordinal') && !depVar.specifiesSubSample) ||
                (indepVar.dataType %in% c('logical', 'nominal', 'ordinal') && !indepVar.specifiesSubSample)) {

              ### The categorical variable does not specify subsamples; this is an error.
              if (!silent) cat0("\n\nOne of these two variables is categorical, but its levels ",
                                "do not specify subsamples.\n\n");
              next();

            }

            ### Now, identify subsamples, and then extract the means and SD's,
            ### and compute the effect size.

            subSampleSpecifier <- ifelse(depVar.specifiesSubSample, currentDependentVariable,
                                         currentIndependentVariable);
            numericVariable <- ifelse(depVar.specifiesSubSample, currentIndependentVariable,
                                         currentDependentVariable);

            relevantSubSamples <- subSamplesInStudy;
            for (currentSubSampleSpecifier in subSampleSpecifier) {
              relevantSubSamples <- intersect(subSamplesInStudy,
                                              findSubSampleNames(uni=uni, var=var, subsamples = subsamples,
                                                                 currentStudy = currentStudy,
                                                                 currentVariable = currentSubSampleSpecifier,
                                                                 currentSubSample = currentSubSample));
            }

            if (!silent) cat0("\n\nSubsamples are specified by '", subSampleSpecifier,
                              ";, so '", numericVariable, "' is numeric. These are all relevant subsamples:",
                              vecTxtQ(relevantSubSamples), ".\n");

            if (length(relevantSubSamples) == 0) {
              if (!silent) cat0("\n\nNumber of relevant subsamples that were identified is 0. Aborting.");
              next();
            } else if (length(relevantSubSamples) == 1) {
              if (!silent) cat0("\n\nOnly one relevant subsample identified. Aborting.");
              next();
            } else if (length(relevantSubSamples) == 2) {
              if (!silent) cat0("\n\nTwo relevant subsamples identified. Computing Cohen's d.\n");
              ###
              ###
              ###     Get means and standard deviations and sample sizes and compute Cohen's d.
              ###
              ###

              tmpDat <- uni[uni[, 'study'] == currentStudy &
                              uni[, 'variable'] == numericVariable &
                              uni[, 'subsample'] %in% relevantSubSamples,
                            c('subsample', 'mean', 'sd', 'depVarValue', 'n', 'size')];

              tmpDat <- tmpDat[order(tmpDat[, 'depVarValue']), ];

              if (!silent) cat0("\n\nExtracted data:\n");
              if (!silent) print(tmpDat);

              sampleSizes <- ifelse(any(is.na(tmpDat[, 'n'])),
                                    tmpDat[, 'size'],
                                    tmpDat[, 'n']);

              if (any(is.na(sampleSizes))) {
                sampleSize <- NULL;
              }

              if (any(is.na(tmpDat[, 'sd'])) || any(is.na(tmpDat[, 'mean']))) {
                if (!silent) cat0("\nError: either one or both mean(s) or ",
                                  "standard deviation(s) are missing.\n");
              } else if ((length(tmpDat[, 'mean']) == 2) &&
                         (length(tmpDat[, 'sd']) == 2) &&
                         (length(sampleSizes) == 2)) {
                cohensDvalue <- convert.means.to.d(means = tmpDat[, 'mean'],
                                                   sds = tmpDat[, 'sd'],
                                                   ns = sampleSizes);
                if (length(cohensDvalue) > 1) {
                  stop("The length of 'cohensDvalue' is more than 1! The ",
                       "input was:\n",
                       "  ", vecTxtQ(tmpDat[, 'mean']), "\n",
                       "  ", vecTxtQ(tmpDat[, 'sd']), "\n",
                       "  ", vecTxtQ(sampleSizes), "\n",
                       "\nThe study is '",
                       currentStudy,
                       "' and the relevant subsamples are: ",
                       vecTxtQ(relevantSubSamples));
                }
                thisRowIndex <- nrow(res) + 1;
                res[thisRowIndex, 'study'] <- currentStudy;
                res[thisRowIndex, 'variable1'] <- currentIndependentVariable;
                res[thisRowIndex, 'variable2'] <- currentDependentVariable;
                res[thisRowIndex, 'd'] <- cohensDvalue;
                if (!is.null(sampleSizes)) {
                  res[thisRowIndex, 'n1'] <- sampleSizes[1];
                  res[thisRowIndex, 'n2'] <- sampleSizes[2];
                }
                if (!silent) cat0("Extracted Cohen's d value: ", cohensDvalue,"\n");
              }

            } else if (length(relevantSubSamples) == 1) {
              if (!silent) cat0("\n\nMore than 3 groups; aborting because this is not implemented yet.");
              next();
            }

            ##################################################################
            ##################################################################
            ##################################################################
            ### Both variables are categorical
            ##################################################################
            ##################################################################
            ##################################################################

          } else if (all(c(depVar.dataType, indepVar.dataType) %in% c('logical', 'nominal', 'ordinal'))) {

            ### Both variables are categorical. Check whether one or both
            ### specifies subsamples.
            if (depVar.specifiesSubSample && indepVar.specifiesSubSample) {

              ### Both variables specify subsample levels; get cell
              ### frequencies from these subsamples

              subSampleSpecifier <- c(currentDependentVariable,
                                      currentIndependentVariable);

              relevantSubSamples <- subSamplesInStudy;
              for (currentSubSampleSpecifier in subSampleSpecifier) {
                relevantSubSamples <- intersect(subSamplesInStudy,
                                                findSubSampleNames(uni=uni, var=var, subsamples = subsamples,
                                                                   currentStudy = currentStudy,
                                                                   currentVariable = currentSubSampleSpecifier,
                                                                   currentSubSample = currentSubSample));
              }

              #################################
              #################################
              #################################

            } else {

              ### One variable specifies subsample levels; get cell frequencies
              ### and combine with data in current variable

              subSampleSpecifier <- ifelse(depVar.specifiesSubSample, currentDependentVariable,
                                           currentIndependentVariable);

              regularVariable <- ifelse(!depVar.specifiesSubSample, currentDependentVariable,
                                           currentIndependentVariable);

              if (!silent) {
                cat0("\nVariable specifying subsamples: ", subSampleSpecifier, ";\n",
                     "Other ('regular') variable: ", regularVariable, ".\n");
              }

              relevantSubSamples <- subSamplesInStudy;
              for (currentSubSampleSpecifier in subSampleSpecifier) {
                relevantSubSamples <- intersect(relevantSubSamples,
                                                findSubSampleNames(uni=uni, var=var, subsamples = subsamples,
                                                                   currentStudy = currentStudy,
                                                                   currentVariable = currentSubSampleSpecifier,
                                                                   currentSubSample = currentSubSample));
              }

              if (length(relevantSubSamples) == 0) {
                if (!silent) cat0("\nNo subsamples have useful values; aborting.\n");
                next();
              }

              valuesExtractedFromSubSample <- getValuesFromSubsample(uni, study=currentStudy,
                                                                     subsamples=relevantSubSamples,
                                                                     variableName=subSampleSpecifier,
                                                                     valueColName='frequency',
                                                                     extraCols = c('subsample', 'value', 'percentage'));

              regularValues <- uni[uni[, 'study'] == currentStudy &
                                     uni[, 'variable'] == regularVariable &
                                     uni[, 'subsample'] %in% valuesExtractedFromSubSample[, 'subsample'],
                                   c('subsample', 'value', 'frequency', 'percentage', 'depVarValue')];

              regularValues <- regularValues[order(regularValues[['depVarValue']],
                                                   regularValues[['value']]), ];

              if (!is.na(var[var$study == currentStudy &
                             var$variable == currentDependentVariable, 'labels'])) {
                depVarLabels <- unlist(strsplit(var[var$study == currentStudy &
                                               var$variable == currentDependentVariable, 'labels'],
                                         " | ", fixed=TRUE));
                if (!silent) {
                  cat0("Dependent variable has as labels '", var[var$study == currentStudy &
                             var$variable == currentDependentVariable, 'labels'],
                       "', which is parsed to ", vecTxtQ(depVarLabels), "\n");
                }
              } else {
                depVarLabels <- paste0(currentDependentVariable, ":",
                                       unique(sort(regularValues[['depVarValue']])));
                if (!silent) {
                  cat0("Dependent variable has no labels (set to NA). Therefore, ",
                       "the values are used to generate these labels: ", vecTxtQ(depVarLabels), "\n");
                }
              }

              if (!is.na(var[var$study == currentStudy &
                             var$variable == currentIndependentVariable, 'labels'])) {
                indepVarLabels <- unlist(strsplit(var[var$study == currentStudy &
                                                 var$variable == currentIndependentVariable, 'labels'],
                                           " | ", fixed=TRUE));
                if (!silent) {
                  cat0("Independent variable has as labels '", var[var$study == currentStudy &
                                                                   var$variable == currentIndependentVariable, 'labels'],
                       "', which is parsed to ", vecTxtQ(indepVarLabels), "\n");
                }
              } else {
                indepVarLabels <- paste0(currentIndependentVariable, ":",
                                         unique(sort(regularValues[['value']])));
                if (!silent) {
                  cat0("Independent variable has no labels (set to NA). Therefore, ",
                       "the values are used to generate these labels: ", vecTxtQ(indepVarLabels), "\n");
                }
              }

              tryCatch({
                tmpCrossTab <-
                  matrix(regularValues[['frequency']],
                         byrow=TRUE, ncol=length(unique(regularValues[['value']])));
              }, warning = function(W) {
                cat0("\nEncountered a warning! The warning text is: ", W$message, "\n\n");
              }, error = function(E) {
                cat0("\nEncountered an ERROR! The error text is: ", E$message, "\n\n");
              });

              ### It's not possible to compute Cramer's v (or chi square) if
              ### two cells are 0; at least if the sum of a row or
              ### column is 0. Therefore, replace zeroes with a very very
              ### low frequency.
              tmpCrossTab <- ifelse(tmpCrossTab == 0, 0.00001, tmpCrossTab);

              if (length(depVarLabels) == nrow(tmpCrossTab)) {
                rownames(tmpCrossTab) <- depVarLabels;
              } else {
                if (!silent) {
                  cat0("Number of labels of dependent variable not equal to number of values (",
                       nrow(tmpCrossTab), "). Labels:", vecTxtQ(depVarLabels), "\n");
                }
              }
              if (length(indepVarLabels) == ncol(tmpCrossTab)) {
                colnames(tmpCrossTab) <- indepVarLabels;
              } else {
                if (!silent) {
                  cat0("Number of labels of independent variable not equal to number of values (",
                       ncol(tmpCrossTab), "). Labels:", vecTxtQ(indepVarLabels), "\n");
                }
              }

              if (!silent) {
                cat0("\n---- Values extracted from the relevant subsamples using 'subsample specifying variable' \"", subSampleSpecifier, "\":\n");
                print(valuesExtractedFromSubSample);
                cat0("\n---- Values extracted within those subsamples using 'regular variable' \"", regularVariable, "\":\n");
                print(regularValues);
              }

              tryCatch({
                if (!silent) {
                  cat0("\n---- Extracted crosstable:\n");
                  cat0("\n", paste0(capture.output(crossTab(tmpCrossTab)),
                             collapse="\n"),
                       "\n");
                }
              }, error=function (e) {
                if (!silent) {
                  cat0("\nError while generating crosstab! The error is:\n    ",
                       e$message);
                }
              });

              if (('variable1' %IN% names(res)) &&
                  ('variable2' %IN% names(res))) {
                ### Check whether this combination hasn't been computed before
                offendingRow <- which(((res[, 'study'] == currentStudy) &
                                         (((res[, 'variable1'] == currentIndependentVariable) &
                                          (res[, 'variable2'] == currentDependentVariable)) |
                                         ((res[, 'variable1'] == currentDependentVariable) &
                                            (res[, 'variable2'] == currentIndependentVariable)))));
              } else {
                offendingRow <- FALSE;
              }
              if (any(offendingRow))  {
                ### It has; don't do anything.

                if (!silent) cat0('This combination already occurs in the ',
                                  'dataframe with results, specifically at row ',
                                  vecTxt(offendingRow), ":\n");
                if (!silent) print(res[offendingRow, ]);

              } else {
                ### It hasn't, so add it.

                ### Compute Cramers's V
                cramersVvalue <- cramersV(tmpCrossTab)$output$cramersV;
                if (!silent) cat0("\nExtracted Cramer's V:", cramersVvalue, "\n");

                ### Make sure the crosstable has both rows and columns; otherwise
                ### process next iteration
                if (cramersVvalue == 'Inf') {
                  if (!silent) cat0("\nCramer's V is 'infinite'. ",
                                    "This is likely because the crosstable only ",
                                    "has one row or one column. This, in turn, is ",
                                    "likely because, for example, we are processing ",
                                    "an independent ('", currentIndependentVariable,
                                    "') or dependent ('", currentDependentVariable,
                                    "') variable that ",
                                    "is a subsample specifier, but we are doing so ",
                                    "*within* another subsample (the current",
                                    "subsample we're working in is '", currentSubSample,
                                    "'). In such cases, there will usually not exist a subsample ",
                                    "to compare this subsample to. Aborting.\n");
                  next();
                } else{
                  ### Add to dataframe with results
                  thisRowIndex <- nrow(res) + 1;
                  res[thisRowIndex, 'study'] <- currentStudy;
                  res[thisRowIndex, 'variable1'] <- currentIndependentVariable;
                  res[thisRowIndex, 'variable2'] <- currentDependentVariable;
                  res[thisRowIndex, 'n1'] <- sum(tmpCrossTab);
                  res[thisRowIndex, 'v'] <- cramersVvalue;
                }
              }
            }

          } else {
            ### This should never occur
            if (!silent) cat0("\n\nError: a situation that has not been anticipated ",
                              "occurred. That should never happen. Consult an expert.\n\n");
            next();

          }
        }
      }
    }
  }

  return(res);

}

output <- capture.output(results <- univariateToAssociation(uni = fasd_rq2_extraction$output$univariate,
                                                 var = fasd_rq2_extraction$output$variable,
                                                 associations = fasd_rq2_extraction$output$association,
                                                 subsamples = fasd_rq2_extraction$output$subsamples));

writeLines(iconv(paste0(output, collapse="\n"), to="UTF-8"),
           file.path(extractionWorkingPath, "Crosstabs.txt"),
           useBytes=T);

### Store results
write.csv(results, file = file.path(extractionWorkingPath, "effectsizes.csv"));

### Store lists of unique variable names
write.csv(table(results[, 'variable1']),
          file = file.path(extractionWorkingPath, "Unique variables - var1.csv"),
          row.names=FALSE);
write.csv(table(results[, 'variable2']),
          file = file.path(extractionWorkingPath, "Unique variables - var2.csv"),
          row.names=FALSE);

### More complete overview of alcohol variables
write.csv(unique(subset(fasd_rq2_extraction$output$variable,
                        !dependent,
                        select = c(variable, datatype, labels,
                                   intensitySpecification,
                                   period, timeframe,
                                   specificationUnits,
                                   specificationTimeframe,
                                   aboutBinging, aboutAlcoholism,
                                   study))),
          file = file.path(extractionWorkingPath, "Alcohol use variables.csv"),
          row.names=FALSE);

write.csv(fasd_rq2_extraction$output$variable,
          file = file.path(workingPath, "variable.csv"));
write.csv(fasd_rq2_extraction$output$univariate,
          file = file.path(workingPath, "univariate.csv"));
write.csv(fasd_rq2_extraction$output$association,
          file = file.path(workingPath, "association.csv"));

################################################################################
################################################################################
### Start preparing for meta-analysis
################################################################################
################################################################################

### Convert all Cohen's d values to the correlation family of effect sizes
if (is.null(results$r)) results$r <- NA;
results$r <- ifelse(!is.na(results$r),
                    results$r,
                    ifelse(!is.na(results$d),
                           convert.d.to.r(results$d, n1 = results$n1, n2 = results$n2),
                           ifelse(!is.na(results$v),
                                  results$v,
                                  NA)));

### Compute total n
results$nTotal <- ifelse(is.na(results$v), results$n1 + results$n2,
                         results$n1);

### Compute variance of r using metafor's escalc
results$rVar <- as.numeric(escalc(measure = 'COR', ri = results$r, ni = results$nTotal)$vi);

### Add unique variable ID to results dataframe
results$uniqueVarID <- uniqueVarID(results$study, results$variable1);

### Add recoded variable independent variable to results dataframe
results$recodeToCategory <-
  fasd_rq2_extraction$output$variable$recodeToCategory[
    match(results$uniqueVarID, fasd_rq2_extraction$output$variable$uniqueVarID)];

################################################################################
################################################################################
### Conduct the meta-analyses
################################################################################
################################################################################

### Both multiplied by 100.
maPictureWidth = 12;
maPictureHeight = 12;

### Object for meta-analyses
maResults.original <- list();

### Meta-analyse separate for each diagnosis
for (currentDependentVar in
     sort(unique(fasd_rq2_extraction$output$variable[
       fasd_rq2_extraction$output$variable$dependent, 'variable']), decreasing=FALSE)) {
  cat0("\n----------------------\nProcessing ", currentDependentVar, "...\n");
  ### Object for results for this dependent variable
  maResults.original[[currentDependentVar]] <- list();
  ### Meta-analyse separate for each alcohol use variable
  for (currentIndependentVar in
       sort(unique(fasd_rq2_extraction$output$variable[
            !fasd_rq2_extraction$output$variable$dependent, 'variable']))) {
    cat0("  Processing ", currentIndependentVar, "...");
    ### Make temporary dataframe
    tmpDf <- results[(results$variable1 %in% c(currentDependentVar, currentIndependentVar)) &
                       (results$variable2 %in% c(currentDependentVar, currentIndependentVar)) &
                       !is.na(results$r) & !is.na(results$rVar),
                     c('variable1', 'variable2', 'study', 'r', 'rVar')];
    if (nrow(tmpDf) > 0) {
      maResults.original[[currentDependentVar]][[currentIndependentVar]] <-
        rma(yi = tmpDf$r, vi = tmpDf$rVar, measure='COR',
            method = 'REML');
      cat0(" Stored meta-analysis for these variables:\n");
      print(tmpDf);
      cat0("\n");
    } else {
      cat0(" No studies available; doing nothing.\n");
    }
  }
}

### Store width
prevWidth <- getOption('width');
options(width = 300);
writeLines(c(capture.output(print(table(results$variable1, results$variable2),
                                  width=300)),
             "\n\n",
             capture.output(print(maResults.original))),
           file.path(extractionWorkingPath,
                     "original",
                     "meta-analyses (original).txt"));
options(width = prevWidth);

for (currentDepVar in names(maResults.original)) {
  if (length(maResults.original[[currentDepVar]]) > 0) {

    tmpDf <- ldply(maResults.original[[currentDepVar]],
                   function(x) return(c(x$ci.lb, x$b, x$ci.ub)));
    names(tmpDf) <- c('variable', 'lb', 'mean', 'ub');

    ggsave(filename = file.path(workingPath, 'original',
                                paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                                      '- diamondplot.png')),
           diamondPlot(tmpDf, ciCols=2:4,
                       yLabels=tmpDf$variable) +
             geom_vline(xintercept=0) +
             ggtitle(paste("Associations for", currentDepVar)),
           dpi = 100, width = maPictureWidth, height = maPictureHeight);

    ### Save funnel and forest plots
    for (currentIndepVar in names(maResults.original[[currentDepVar]])) {
      maName <- paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                      "-",
                      gsub("[^[:alnum:] _]", "", currentIndepVar));
      png(filename = file.path(workingPath, 'original',
                               paste(maName, '- funnelplot.png')),
          type='cairo-png',
          width = 100 * maPictureWidth, height=100 * maPictureHeight);
      funnel(maResults.original[[currentDepVar]][[currentIndepVar]]);
      dev.off();
      png(filename = file.path(workingPath, 'original',
                               paste(maName, '- forestplot.png')),
          type='cairo-png',
          width = 100 * maPictureWidth, height=100 * maPictureHeight);
      forest(maResults.original[[currentDepVar]][[currentIndepVar]]);
      dev.off();
    }
  }
}

################################################################################
################################################################################
### Repeat the meta-analyses for the recoded variables
################################################################################
################################################################################

### Backup original 'variable1' and replace with 'recodeToCategory'
results$variable1.original <- results$variable1;
results$variable1 <- results$recodeToCategory;

### Object for meta-analyses
maResults.recoded <- list();

### Meta-analyse separate for each diagnosis
for (currentDependentVar in
     sort(unique(fasd_rq2_extraction$output$variable[
       fasd_rq2_extraction$output$variable$dependent, 'variable']))) {
  cat0("\n----------------------\nProcessing ", currentDependentVar, "...\n");
  ### Object for results for this dependent variable
  maResults.recoded[[currentDependentVar]] <- list();
  ### Meta-analyse separate for each alcohol use variable
  for (currentIndependentVar in
       sort(unique(na.omit(fasd_rq2_extraction$output$variable$recodeToCategory)))) {
#        unique(fasd_rq2_extraction$output$variable[
#          !fasd_rq2_extraction$output$variable$dependent, 'variable'])) {
    cat0("  Processing ", currentIndependentVar, "...\n");
    ### Make temporary dataframe
    tmpDf <- results[(results$variable1 %in% c(currentDependentVar, currentIndependentVar)) &
                       (results$variable2 %in% c(currentDependentVar, currentIndependentVar)) &
                       !is.na(results$r) & !is.na(results$rVar),
                     c('variable1', 'variable2', 'study', 'r', 'rVar')];
    print(tmpDf);
    if (nrow(tmpDf) > 0) {
      maResults.recoded[[currentDependentVar]][[currentIndependentVar]] <-
        rma(yi = tmpDf$r, vi = tmpDf$rVar, measure='COR',
            method = 'REML');
      cat0("    Stored meta-analysis.\n");
    } else {
      cat0("    No studies available; doing nothing.\n");
    }
  }
}

### Store width
prevWidth <- getOption('width');
options(width = 200);
writeLines(c(capture.output(print(table(results$variable1, results$variable2),
                                  width=300)),
             "\n\n",
             capture.output(print(maResults.recoded))),
           file.path(extractionWorkingPath, "recoded",
                     "meta-analyses (recoded).txt"));
options(width = prevWidth);

for (currentDepVar in names(maResults.recoded)) {
  if (length(maResults.recoded[[currentDepVar]]) > 0) {

    tmpDf <- ldply(maResults.recoded[[currentDepVar]],
                   function(x) return(c(x$ci.lb, x$b, x$ci.ub)));
    names(tmpDf) <- c('variable', 'lb', 'mean', 'ub');

    ggsave(filename = file.path(workingPath, 'recoded',
                                paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                                      '- diamondplot.png')),
           diamondPlot(tmpDf, ciCols=2:4,
                       yLabels=tmpDf$variable) +
             geom_vline(xintercept=0) +
             ggtitle(paste("Associations for", currentDepVar)),
           dpi = 100, width = maPictureWidth, height=maPictureHeight);

    ### Save funnel and forest plots
    for (currentIndepVar in names(maResults.recoded[[currentDepVar]])) {
      maName <- paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                      "-",
                      gsub("[^[:alnum:] _]", "", currentIndepVar));
      png(filename = file.path(workingPath, 'recoded',
                               paste(maName, '- funnelplot.png')),
          type='cairo-png',
          width = 100 * maPictureWidth, height=100 * maPictureHeight);
      funnel(maResults.recoded[[currentDepVar]][[currentIndepVar]]);
      dev.off();
      png(filename = file.path(workingPath, 'recoded',
                               paste(maName, '- forestplot.png')),
          type='cairo-png',
          width = 100 * maPictureWidth, height=100 * maPictureHeight);
      forest(maResults.recoded[[currentDepVar]][[currentIndepVar]]);
      dev.off();
    }
  }
}

### Restore backup of original 'variable1'
results$variable1 <- results$variable1.original;

################################################################################
################################################################################
### Separate for each datatype
################################################################################
################################################################################

### Make vector with datatype for each uniqueVarID
datatypeVector <- fasd_rq2_extraction$output$variable$datatype;
names(datatypeVector) <- fasd_rq2_extraction$output$variable$uniqueVarID;

### Add to results
results$indepVarDatatype <- datatypeVector[results$uniqueVarID];

### Backup original 'variable1' and replace with 'recodeToCategory'
results$variable1.original <- results$variable1;
results$variable1 <- results$recodeToCategory;

### Object for meta-analyses
maResults.recoded.perDatatype <- list();

### Meta-analyse separate for each diagnosis
for (currentDependentVar in
     sort(unique(fasd_rq2_extraction$output$variable[
       fasd_rq2_extraction$output$variable$dependent, 'variable']))) {
  cat0("\n----------------------\nProcessing ", currentDependentVar, "...\n");
  ### Object for results for this dependent variable
  maResults.recoded.perDatatype[[currentDependentVar]] <- list();

  ### Meta-analyse separate for each datatype
  for (currentDatatype in
       sort(unique(fasd_rq2_extraction$output$variable[, 'datatype']))) {
    cat0("\n----------------------\nProcessing datatype ", currentDatatype, "...\n");
    ### Object for results for this dependent variable
    maResults.recoded.perDatatype[[currentDependentVar]][[currentDatatype]] <- list();

    ### Meta-analyse separate for each alcohol use variable
  for (currentIndependentVar in
       sort(unique(na.omit(fasd_rq2_extraction$output$variable$recodeToCategory)))) {
    #        unique(fasd_rq2_extraction$output$variable[
    #          !fasd_rq2_extraction$output$variable$dependent, 'variable'])) {
    cat0("  Processing ", currentIndependentVar, "...\n");
    ### Make temporary dataframe
    tmpDf <- results[(results$variable1 %in% c(currentDependentVar, currentIndependentVar)) &
                       (results$variable2 %in% c(currentDependentVar, currentIndependentVar)) &
                       (results$indepVarDatatype == currentDatatype) &
                       !is.na(results$r) & !is.na(results$rVar),
                     c('variable1', 'variable2', 'study', 'r', 'rVar')];
    print(tmpDf);
    if (nrow(tmpDf) > 0) {
      maResults.recoded.perDatatype[[currentDependentVar]][[currentDatatype]][[currentIndependentVar]] <-
        rma(yi = tmpDf$r, vi = tmpDf$rVar, measure='COR',
            method = 'REML');
      cat0("    Stored meta-analysis.\n");
    } else {
      cat0("    No studies available; doing nothing.\n");
    }
  }
  }
}

### Store width
prevWidth <- getOption('width');
options(width = 200);
writeLines(c(capture.output(print(table(results$variable1, results$variable2),
                                  width=300)),
             "\n\n",
             capture.output(print(maResults.recoded.perDatatype))),
           file.path(extractionWorkingPath, "datatype",
                     "meta-analyses (per datatype (and recoded)).txt"));
options(width = prevWidth);

for (currentDepVar in names(maResults.recoded.perDatatype)) {
  if (length(maResults.recoded.perDatatype[[currentDepVar]]) > 0) {
    for (currentDatatype in names(maResults.recoded.perDatatype[[currentDepVar]])) {

      tmpDf <- ldply(maResults.recoded.perDatatype[[currentDepVar]][[currentDatatype]],
                     function(x) return(c(x$ci.lb, x$b, x$ci.ub)));

      if (nrow(tmpDf) == 0) {
        cat0("Nothing for dependent variable ", currentDepVar, " and datatype ", currentDatatype, ".\n");
        next;
      }

      names(tmpDf) <- c('variable', 'lb', 'mean', 'ub');

      ggsave(filename = file.path(workingPath, 'datatype',
                                  paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                                        " - ", currentDatatype,
                                        ' - diamondplot.png')),
             diamondPlot(tmpDf, ciCols=2:4,
                         yLabels=tmpDf$variable) +
               geom_vline(xintercept=0) +
               ggtitle(paste("Associations for", currentDepVar, " (", currentDatatype, ")")),
             dpi = 100, width = maPictureWidth, height= maPictureHeight);

      ### Save funnel and forest plots
      for (currentDatatype in names(maResults.recoded.perDatatype[[currentDepVar]])) {
        for (currentIndepVar in names(maResults.recoded.perDatatype[[currentDepVar]][[currentDatatype]])) {
#           maName <- paste(abbreviate(gsub("[^[:alnum:] _]", "", currentDepVar), minlength=8),
#                           "-",
#                           abbreviate(gsub("[^[:alnum:] _]", "", currentIndepVar), minlength=8),
#                           '-',
#                           currentDatatype);
          maName <- paste(gsub("[^[:alnum:] _]", "", currentDepVar),
                          "-",
                          gsub("[^[:alnum:] _]", "", currentIndepVar),
                          '-',
                          currentDatatype);
          print(maName);
          png(filename = file.path(workingPath, 'datatype',
                                   paste(maName, '- funnelplot.png')),
              type='cairo-png',
              width = 100 * maPictureWidth, height=100 * maPictureHeight);
          funnel(maResults.recoded.perDatatype[[currentDepVar]][[currentDatatype]][[currentIndepVar]]);
          dev.off();
          png(filename = file.path(workingPath, 'datatype',
                                   paste(maName, '- forestplot.png')),
              type='cairo-png',
              width = 100 * maPictureWidth, height=100 * maPictureHeight);
          forest(maResults.recoded.perDatatype[[currentDepVar]][[currentDatatype]][[currentIndepVar]]);
          dev.off();
        }
      }
    }
  }
}

### Restore backup of original 'variable1'
results$variable1 <- results$variable1.original;

################################################################################
################################################################################
### Potential moderators
################################################################################
################################################################################

### Sample characteristics: sampling method, sampling controls, and aselect
### versus select sampling all have too much variation to be useful.
freq(unlist(lapply(fasd_rq2_extraction$intermediate$rawObjects,
              function(x) return(x$sample$samplingMethod))));
freq(factor(unlist(lapply(fasd_rq2_extraction$intermediate$rawObjects,
                   function(x) return(x$sample$samplingAselect)))));
freq(unlist(lapply(fasd_rq2_extraction$intermediate$rawObjects,
                   function(x) return(x$sample$samplingControls))));

### Note that for these study characteriscs, the variation is very high.
### Important to mention that in the paper (e.g. that matching occurs on
### many different variables).

### Recruitment setting, however, may be distributed in a useful manner;
### so it's included in the 'univariate' dataframe (above) using 'addSampleInfo'
freq(unlist(lapply(fasd_rq2_extraction$intermediate$rawObjects,
                   function(x) return(x$sample$recruitmentSetting))));

### Only 2 studies used passive case ascertainment, so not possible to include
### as moderator
freq(fasd_rq2_extraction$output$variable$caseascertainment);

### Diagnosis method cannot be included as a moderator (only enough studies
### for FAS and IOM05 vs IOM96, and those are basically the same (but updated).
freq(fasd_rq2_extraction$output$variable$diagnosisMethod);

crossTab(fasd_rq2_extraction$output$variable[
  fasd_rq2_extraction$output$variable$dependent==TRUE, 'variable'],
  fasd_rq2_extraction$output$variable[
    fasd_rq2_extraction$output$variable$dependent==TRUE, 'diagnosisMethod']);

################################################################################
################################################################################
### Convert numeric measures to same unit: grams per day
################################################################################
################################################################################

fasd_rq2_extraction$output$variable[, c('study',
                                        'datatype',
                                        'aboutBinging',
                                        'aboutAlcoholism',
                                        'intensitySpecification',
                                        'specificationUnits',
                                        'nrOfUnitsInUnit',
                                        'unitUnits')];

### Add relevant variables from the 'variable' dataframe
fasd_rq2_extraction$output$univariate <-
  addVariableInfo(variablesDataframe = fasd_rq2_extraction$output$variable,
                  dataframe = fasd_rq2_extraction$output$univariate,
                  variableToAdd = c('period', 'varType',
                                    'intensitySpecification',
                                    'specificationUnits',
                                    'specificationTimeframe',
                                    'aboutBinging', 'aboutAlcoholism',
                                    'labels',
                                    'recodeToCategory'));

### Convert alcohol consumption specified by authors to grams
fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_mean <-
  ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'g',
         fasd_rq2_extraction$output$univariate$mean,
         ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'mg',
                fasd_rq2_extraction$output$univariate$mean * 1000,
                ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'ml',
                       fasd_rq2_extraction$output$univariate$mean * .8,
                       ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'oz',
                              fasd_rq2_extraction$output$univariate$mean * 28.3495,
                              NA))));

### Also for standard deviation
fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_sd <-
  ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'g',
         fasd_rq2_extraction$output$univariate$sd,
         ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'mg',
                fasd_rq2_extraction$output$univariate$sd * 1000,
                ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'ml',
                       fasd_rq2_extraction$output$univariate$sd * .8,
                       ifelse(fasd_rq2_extraction$output$univariate$specificationUnits == 'oz',
                              fasd_rq2_extraction$output$univariate$sd * 28.3495,
                              NA))));

### Extract geography of each study
studyGeography <- ldply(fasd_rq2_extraction$intermediate$processedObjects,
                        function(x) return(x$sample$geography));
names(studyGeography) <- c('study', 'geography');

### Add to 'variables' dataframe
fasd_rq2_extraction$output$variable <- merge(fasd_rq2_extraction$output$variable,
                                             studyGeography,
                                             by='study');

### Show unit info and countries
fasd_rq2_extraction$output$variable[isTrue(fasd_rq2_extraction$output$variable$specificationUnits == 'units'),
                                    c('study',
                                      'nrOfUnitsInUnit',
                                      'unitUnits',
                                      'geography')];

### Add units for each country
### See http://www.rarha.eu/Resources/Deliverables/Lists/Deliverables/Attachments/14/WP5%20Background%20paper%20Standard%20drink%20measures%20HRB.pdf
###   South Africa: 10 gram is one unit
###   United States: 14 gram is one unit
###   Italy: 12 gram is one unit
###   Croatie: XX gram is one unit (Only Petkovic; supplies no numeric variables, so not relevant)
###   Australia: XX gram is one unit (Only Coyne & Leary; supply no numeric variables, so not relevant)
fasd_rq2_extraction$output$variable$countryUnitGrams <- ifelse(fasd_rq2_extraction$output$variable$geography == 'South Africa',
                                                               10, ifelse(fasd_rq2_extraction$output$variable$geography == 'Italy',
                                                                          12,
                                                                          ifelse(fasd_rq2_extraction$output$variable$geography == 'United States',
                                                                                 14, NA)));

### Convert units that authors used to indicate how much alcohol is in one unit (glass)
### to grams
fasd_rq2_extraction$output$variable$specifiedGramsInOneUnit <-
  ifelse(fasd_rq2_extraction$output$variable$unitUnits == 'g',
         convertToNumeric(fasd_rq2_extraction$output$variable$nrOfUnitsInUnit),
         ifelse(fasd_rq2_extraction$output$variable$unitUnits == 'mg',
                convertToNumeric(fasd_rq2_extraction$output$variable$nrOfUnitsInUnit) * 1000,
                ifelse(fasd_rq2_extraction$output$variable$unitUnits == 'ml',
                       convertToNumeric(fasd_rq2_extraction$output$variable$nrOfUnitsInUnit) * .8,
                       ifelse(fasd_rq2_extraction$output$variable$unitUnits == 'oz',
                              convertToNumeric(fasd_rq2_extraction$output$variable$nrOfUnitsInUnit) * 28.3495,
                              NA))));

### verify using manual computation
table(fasd_rq2_extraction$output$variable$specifiedGramsInOneUnit, fasd_rq2_extraction$output$variable$calculatednrOfUnitsInUnit);

### Establish final measure based on different possible 'units (g, ml, etc) in one unit (glass)' measures
### Use convertToNumeric to make sure that we check for valid numbers; otherwise a character value of 'NA'
### is not considered NA
fasd_rq2_extraction$output$variable$gramsInOneUnitToUse <-
  ifelse(!is.na(convertToNumeric(fasd_rq2_extraction$output$variable$specifiedGramsInOneUnit)),
         fasd_rq2_extraction$output$variable$specifiedGramsInOneUnit,
         ifelse(!is.na(convertToNumeric(fasd_rq2_extraction$output$variable$calculatednrOfUnitsInUnit)),
                fasd_rq2_extraction$output$variable$calculatednrOfUnitsInUnit,
                ifelse(!is.na(convertToNumeric(fasd_rq2_extraction$output$variable$countryUnitGrams)),
                       fasd_rq2_extraction$output$variable$countryUnitGrams,
                       NA)));

### An overview to check these values:
unique(fasd_rq2_extraction$output$variable[, c('study', 'specifiedGramsInOneUnit',
                                               'calculatednrOfUnitsInUnit', 'countryUnitGrams',
                                               'gramsInOneUnitToUse')])

### Add this to the univariate dataframe
fasd_rq2_extraction$output$univariate <-
  addVariableInfo(variablesDataframe = fasd_rq2_extraction$output$variable,
                  dataframe = fasd_rq2_extraction$output$univariate,
                  variableToAdd = c('specificationUnits', 'gramsInOneUnitToUse'));

### Compute grams of alcohol from number of units
fasd_rq2_extraction$output$univariate$gramsAlcoholFromUnits_mean <-
  ifelse(isTrue(fasd_rq2_extraction$output$univariate$specificationUnits == 'units'),
         fasd_rq2_extraction$output$univariate$mean *
           convertToNumeric(fasd_rq2_extraction$output$univariate$gramsInOneUnitToUse), NA);
fasd_rq2_extraction$output$univariate$gramsAlcoholFromUnits_sd <-
  ifelse(isTrue(fasd_rq2_extraction$output$univariate$specificationUnits == 'units'),
         fasd_rq2_extraction$output$univariate$sd *
           convertToNumeric(fasd_rq2_extraction$output$univariate$gramsInOneUnitToUse), NA);

### Compare both columns:
fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$datatype == 'numeric',
                                      c('study', 'variable',
                                        'gramsAlcoholSpecifiedByAuthors_mean',
                                        'gramsAlcoholFromUnits_mean')];

### Compute mean and standard deviation of grams of alcohol
fasd_rq2_extraction$output$univariate$gramsAlcohol_mean <-
  ifelse(!is.na(fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_mean),
         fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_mean,
         fasd_rq2_extraction$output$univariate$gramsAlcoholFromUnits_mean);
fasd_rq2_extraction$output$univariate$gramsAlcohol_sd <-
  ifelse(!is.na(fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_sd),
         fasd_rq2_extraction$output$univariate$gramsAlcoholSpecifiedByAuthors_sd,
         fasd_rq2_extraction$output$univariate$gramsAlcoholFromUnits_sd);

### Convert to per week using 'specificationTimeframe' variable. Note: if this
### variable is missing, the specification was per day already, so no conversion
### takes place.

### First simplify specificationTimeframe variable
fasd_rq2_extraction$output$univariate$timeframeForGrams <-
  ifelse(grepl('day', fasd_rq2_extraction$output$univariate$specificationTimeframe),
         'day',
         ifelse(grepl('week', fasd_rq2_extraction$output$univariate$specificationTimeframe),
           'week',
           ifelse(grepl('year', fasd_rq2_extraction$output$univariate$specificationTimeframe) |
                    grepl('12 months', fasd_rq2_extraction$output$univariate$specificationTimeframe),
                  'year',
                  ifelse(grepl('month', fasd_rq2_extraction$output$univariate$specificationTimeframe),
                         'month',
                          NA))));

### Verify
table(fasd_rq2_extraction$output$univariate$specificationTimeframe,
      fasd_rq2_extraction$output$univariate$timeframeForGrams);

### Convert to multiplier
fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier <-
  ifelse(fasd_rq2_extraction$output$univariate$timeframeForGrams == 'day',
         1,
         ifelse(fasd_rq2_extraction$output$univariate$timeframeForGrams == 'week',
                1/ (365.25/52),
                ifelse(fasd_rq2_extraction$output$univariate$timeframeForGrams == 'month',
                       1/ (365.25/12),
                       ifelse(fasd_rq2_extraction$output$univariate$timeframeForGrams == 'year',
                              1/ (365.25),
                              NA))));

### Verify
table(fasd_rq2_extraction$output$univariate$timeframeForGrams,
      fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier);

### Multiply means and standard deviations
fasd_rq2_extraction$output$univariate$gramsAlcohol_mean_perday <-
  ifelse(is.na(fasd_rq2_extraction$output$univariate$gramsAlcohol_mean) |
           is.na(fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier),
         NA,
         fasd_rq2_extraction$output$univariate$gramsAlcohol_mean *
           fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier);

fasd_rq2_extraction$output$univariate$gramsAlcohol_sd_perday <-
  ifelse(is.na(fasd_rq2_extraction$output$univariate$gramsAlcohol_sd) |
           is.na(fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier),
         NA,
         fasd_rq2_extraction$output$univariate$gramsAlcohol_sd *
           fasd_rq2_extraction$output$univariate$gramTimeframeMultiplier);

################################################################################
################################################################################
### Generate plots
################################################################################
################################################################################

### Compute confidence intervals
ciDf <- data.frame(matrix(unlist(apply(fasd_rq2_extraction$output$univariate, 1, function(x) {
  if (!is.na(x['gramsAlcohol_mean']) && !is.na(x['gramsAlcohol_sd']) && (!is.na(x['size']) || !is.na(x['n']))) {
    #print(x[c('study', 'gramsAlcohol_mean', 'gramsAlcohol_sd', 'size', 'n')]);
    return(meanConfInt(mean = as.numeric(x['gramsAlcohol_mean_perday']),
                       sd = as.numeric(x['gramsAlcohol_sd_perday']),
                       n = ifelse(is.na(x['n']),
                                  as.numeric(x['size']),
                                  as.numeric(x['n'])))$output);
  } else {
    return(c(NA, NA));
  }
})), ncol=2, byrow=TRUE));
names(ciDf) <- c('alcoholGrams_ci.lb', 'alcoholGrams_ci.ub');

fasd_rq2_extraction$output$univariate <- cbind(fasd_rq2_extraction$output$univariate, ciDf);
fasd_rq2_extraction$output$univariate$alcoholGrams_ci.lb <-
  ifelse(fasd_rq2_extraction$output$univariate$alcoholGrams_ci.lb < 0,
         0,
         fasd_rq2_extraction$output$univariate$alcoholGrams_ci.lb);

### Export extended univariate data
write.csv(fasd_rq2_extraction$output$univariate,
          file = file.path(workingPath, "univariate (extended).csv"));


diamondPlotList <- list();

########################### ONLY FOR DEBUGGING!!!!
sink(file.path(workingPath, "debugging log.txt"), split=TRUE);

for (currentDepVar in unique(na.omit(fasd_rq2_extraction$output$univariate$depVarName))) {
  diamondPlotList[[currentDepVar]] <- list();
  for (currentIndepVar in unique(na.omit(fasd_rq2_extraction$output$univariate$recodeToCategory))) {

    ### Obsolete; can be deleted safely if it's after 2016/08/01
#     tmpDf <- fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$datatype == 'numeric' &
#                                                      fasd_rq2_extraction$output$univariate$recodeToCategory == currentIndepVar &
#
#                                                      ### Either apply to the current dependent variable, or, if it's a control
#                                                      ### group, this can be empty (control groups can be used for multiple dependent
#                                                      ### variables, and so don't have one 'depVarName').
#
#                                                      (fasd_rq2_extraction$output$univariate$depVarName == currentDepVar |
#                                                         (fasd_rq2_extraction$output$univariate$depVarValue == 0))
#
#                                                    ,
#                                                    c('alcoholGrams_ci.lb', 'gramsAlcohol_mean_perday', 'alcoholGrams_ci.ub',
#                                                      'study', 'depVarValue')];

    ### Get experimental groups

    tmpDf <- fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$datatype == 'numeric' &
                                                     fasd_rq2_extraction$output$univariate$recodeToCategory == currentIndepVar &
                                                     fasd_rq2_extraction$output$univariate$depVarName == currentDepVar &
                                                     fasd_rq2_extraction$output$univariate$depVarValue == 1,
                                                   c('alcoholGrams_ci.lb', 'gramsAlcohol_mean_perday', 'alcoholGrams_ci.ub',
                                                     'study', 'depVarValue', 'variable')];


    ############################################################################
    ############################################################################
    ### Do something to average within study, if we want to.
    ############################################################################
    ############################################################################

    ### For these studies and these independent variables, add the control groups

    tmpDf <- rbind(tmpDf,
                   fasd_rq2_extraction$output$univariate[fasd_rq2_extraction$output$univariate$datatype == 'numeric' &
                                                           fasd_rq2_extraction$output$univariate$recodeToCategory == currentIndepVar &
                                                           fasd_rq2_extraction$output$univariate$study %in% unique(tmpDf$study) &
                                                           fasd_rq2_extraction$output$univariate$depVarValue == 0,
                                                         c('alcoholGrams_ci.lb', 'gramsAlcohol_mean_perday', 'alcoholGrams_ci.ub',
                                                           'study', 'depVarValue', 'variable')]);

    fullTmpDf <- tmpDf;

    cat0("\n\nLooking at extracted data:\n");
    print(na.omit(fullTmpDf));

    ### Remove missing values
    tmpDf <- tmpDf[complete.cases(tmpDf), ];

    ### Set colours for each condition
    tmpDf$depVarValue <- ifelse(tmpDf$depVarValue==1, "Red", ifelse(tmpDf$depVarValue==0, "Green", "Grey"));

    ### Remove '.r' from study identifiers
    tmpDf$study <- as.character(tmpDf$study);
    tmpDf$study <- substr(tmpDf$study, 1, nchar(tmpDf$study) - 2);

    if (nrow(tmpDf) > 0) {
      cat0("\n### Processing '", currentIndepVar, "' for '", currentDepVar, "'; found ", nrow(tmpDf), " valid lines:\n");
      print(tmpDf);
      if (nrow(tmpDf) > 1) {
        plotName <- paste0("Grams per day ", currentIndepVar, " for '", currentDepVar, "'");

        diamondPlotList[[currentDepVar]][[currentIndepVar]] <-
          diamondPlot(data = tmpDf, yValues = 'study', yLabels = 'study',
                      colorCol = 'depVarValue', alpha=.5) +
          ggtitle(plotName);

        print(diamondPlotList[[currentDepVar]][[currentIndepVar]]);

        ggsave(plot=diamondPlotList[[currentDepVar]][[currentIndepVar]],
               file.path(workingPath, paste0(plotName, ".png")),
               dpi= 100, width = maPictureWidth, height= maPictureHeight);

      }

      cat0("\n", repeatStr('#', 80), "\n",
           "FOR DEBUGGING - all lines where datatype=numeric and 'recodeToCategory' = '", currentIndepVar, "' \n",
           repeatStr('#', 80), "\n");
      print(fasd_rq2_extraction$output$univariate[isTrue(fasd_rq2_extraction$output$univariate$datatype == 'numeric' &
                                                           fasd_rq2_extraction$output$univariate$recodeToCategory == currentIndepVar),
#                                                   c('study', 'gramsAlcohol_mean_perday', 'mean', 'sd', 'specificationUnits', 'variable',
#                                                     'subsample', 'depVarName', 'depVarValue',
#                                                     'alcoholGrams_ci.lb', 'alcoholGrams_ci.ub')
                                                  ]);
      cat0("\n", repeatStr('#', 80), "\n");

    } else {
      cat0("\n### Processing '", currentIndepVar, "' for '", currentDepVar, "': no valid lines.");
    }

  }
}

sink();

# ggsave(filename = file.path(workingPath, 'datatype',
#                             paste(gsub("[^[:alnum:] _]", "", currentDepVar),
#                                   " - ", currentDatatype,
#                                   ' - diamondplot.png')),
#        diamondPlot(tmpDf, ciCols=2:4,
#                    yLabels=tmpDf$variable) +
#          geom_vline(xintercept=0) +
#          ggtitle(paste("Associations for", currentDepVar, " (", currentDatatype, ")")));








################################################################################
################################################################################


### Number of logical, ordinal, and numeric variables
### for the independent and dependent variables
table(fasd_rq2_extraction$output$univariate$datatype,
      fasd_rq2_extraction$output$univariate$dependent)

### Look at alcohol consumption in first trimester for ARBD

### Variables:
table(fasd_rq2_extraction$output$univariate$variable[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                                       grepl('ARBD', fasd_rq2_extraction$output$univariate$depVarName)],
      fasd_rq2_extraction$output$univariate$datatype[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                                       grepl('ARBD', fasd_rq2_extraction$output$univariate$depVarName)]);

fasd_rq2_extraction$output$univariate[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                        grepl('ARBD', fasd_rq2_extraction$output$univariate$depVarName), c('variable', 'labels', 'subsample', 'study')]

### Only one study: Leary2010b, with 16 datapoints. Closer inspection reveals
### that these datapoints relate to 4 levels of an ordinal variable concerning
### drinking behavior. The odds ratios are reported in Table 4 on page e847.


### Look at alcohol consumption in first trimester for FAS

table(fasd_rq2_extraction$output$univariate$variable[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                                       grepl('FAS diagnosis', fasd_rq2_extraction$output$univariate$depVarName)],
      fasd_rq2_extraction$output$univariate$datatype[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                                       grepl('FAS diagnosis', fasd_rq2_extraction$output$univariate$depVarName)]);

### Whether mothers consumed alcohol during the first trimester:

fasd_rq2_extraction$output$univariate[isTrue(fasd_rq2_extraction$output$univariate$period=='1st') &
                                        isTrue(fasd_rq2_extraction$output$univariate$variable == 'Alcohol consumption: during first trimester') &
                                        isTrue(fasd_rq2_extraction$output$univariate$datatype == 'logical') &
                                        grepl('FAS diagnosis', fasd_rq2_extraction$output$univariate$depVarName), c('variable', 'labels', 'subsample', 'study')];


fasd_rq2_extraction$output$univariate[isTrue(fasd_rq2_extraction$output$univariate$variable == 'Alcohol consumption: during') &
                                        isTrue(fasd_rq2_extraction$output$univariate$datatype == 'logical') &
                                        grepl('FAS diagnosis', fasd_rq2_extraction$output$univariate$depVarName), c('variable', 'labels', 'subsample', 'study', 'n', 'size')];

################################################################################
################################################################################
### FAS diagnosis
################################################################################
################################################################################

fasd_rq2_extraction$output$univariate[grepl('drinking',
                                            fasd_rq2_extraction$output$univariate$variable,
                                            ignore.case = TRUE) &
  isTrue(fasd_rq2_extraction$output$univariate$period == 'before') &
    isTrue(fasd_rq2_extraction$output$univariate$datatype == 'logical' |
             fasd_rq2_extraction$output$univariate$datatype == 'ordinal') &
    grepl('FAS diagnosis', fasd_rq2_extraction$output$univariate$depVarName,
          ignore.case = TRUE),
  c('variable', 'labels', 'value', 'depVarName',
    'subsample', 'study', 'n', 'size', 'percentage')];

################################################################################
################################################################################
### Add study quality
################################################################################
################################################################################

studyQualityDat <- c(Cannon2012.r = 4,
                     Ceccanti2014b.r = 9,
                     Coyne2008a.r = 5,
                     Davies2011.r = 6,
                     Leary2010b.r = 6,
                     May2000.r = 6,
                     May2005.r  = 7,
                     May2007a.r = 7,
                     May2008a.r = 6,
                     May2011b.r = 9,
                     May2013d.r = 7,
                     May2013e.r = 7,
                     May2014.r = 7,
                     May2014a.r = 7,
                     May2017.r = 7,
                     Miller1995a.r = 7,
                     Petkovic2013a.r = 7,
                     Suttie2013a.r = 5,
                     Urban2008.r = 6,
                     Viljoen2002a.r = 6,
                     Viljoen2005.r = 7);

mean(studyQualityDat);

################################################################################
################################################################################
### Datatypes ggplot Univariate results
################################################################################
################################################################################

### NOS vs. study year

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$year <- ifelse(is.na(fasd_rq2_extraction$output$univariate$year),
                                                     fasd_rq2_extraction$output$univariate$endyear,
                                                     fasd_rq2_extraction$output$univariate$year);

ggplot(fasd_rq2_extraction$output$univariate, aes(x=year, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. geography

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$geography <- fasd_rq2_extraction$output$univariate$geography;


ggplot(fasd_rq2_extraction$output$univariate, aes(x=geography, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. Descent

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$descent <- fasd_rq2_extraction$output$univariate$descent;


ggplot(fasd_rq2_extraction$output$univariate, aes(x=descent, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. method. Note: all include retrospective samples

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$samplingMethod <- fasd_rq2_extraction$output$univariate$samplingMethod;


ggplot(fasd_rq2_extraction$output$univariate, aes(x=samplingMethod, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. Aselect sampling

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$samplingAselect <- fasd_rq2_extraction$output$univariate$samplingAselect;


ggplot(fasd_rq2_extraction$output$univariate, aes(x=samplingAselect, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. recruitment setting

fasd_rq2_extraction$output$univariate$NOS <- studyQualityDat[fasd_rq2_extraction$output$univariate$study];

fasd_rq2_extraction$output$univariate$recruitmentSetting <- fasd_rq2_extraction$output$univariate$recruitmentSetting;


ggplot(fasd_rq2_extraction$output$univariate, aes(x=recruitmentSetting, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);



################################################################################
################################################################################
### Datatypes ggplot Univariate & Variable results
################################################################################
################################################################################

### Get diagnosis method and case ascertainment method for each study

diagnosismethodDF <-
  na.omit(unique(fasd_rq2_extraction$output$variable[, c('study', 'diagnosisMethod')]));
diagnosismethodVector <- diagnosismethodDF[, 2];
names(diagnosismethodVector) <- diagnosismethodDF[, 1];
fasd_rq2_extraction$output$univariate$diagnosisMethod <-
  diagnosismethodVector[fasd_rq2_extraction$output$univariate$study];

caseascertainmentDF <-
  na.omit(unique(fasd_rq2_extraction$output$variable[, c('study', 'caseascertainment')]));
caseascertainmentVector <- caseascertainmentDF[, 2];
names(caseascertainmentVector) <- caseascertainmentDF[, 1];
fasd_rq2_extraction$output$univariate$caseascertainment <-
  caseascertainmentVector[fasd_rq2_extraction$output$univariate$study];

dataCollectionMethodDF <-
  na.omit(unique(fasd_rq2_extraction$output$variable[, c('study', 'dataCollectionMethod')]));
dataCollectionMethodVector <- dataCollectionMethodDF[, 2];
names(dataCollectionMethodVector) <- dataCollectionMethodDF[, 1];
fasd_rq2_extraction$output$univariate$dataCollectionMethod <-
  dataCollectionMethodVector[fasd_rq2_extraction$output$univariate$study];




### NOS vs. diagnosisMethod
ggplot(fasd_rq2_extraction$output$univariate, aes(x=diagnosisMethod, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);

### NOS vs. caseascertainment

ggplot(fasd_rq2_extraction$output$univariate, aes(x=caseascertainment, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);


### NOS vs. datacollectionMethod

ggplot(fasd_rq2_extraction$output$univariate, aes(x=dataCollectionMethod, y=NOS, color=datatype)) +
  theme_bw() +
  geom_jitter(alpha=.25, size=3, na.rm=TRUE) +
  geom_smooth(method='lm', se=FALSE, na.rm=TRUE);



