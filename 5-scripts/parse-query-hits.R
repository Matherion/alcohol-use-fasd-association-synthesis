########################################################################
### Load packages
########################################################################

require('userfriendlyscience');  ### For convenience functions, e.g. 'safeRequire'
safeRequire('here');             ### To easily access files using 'relative paths'
safeRequire('plyr');             ### For easily processing and restructuring data
safeRequire('devtools');         ### To install metabefor from github repo
### ... Which we then do here:
devtools::install_github("Matherion/metabefor");
require('metabefor');

queryResultsPath <- here::here("1-queries");
screeningPath <- here::here("2-screening");

#######################################################################################################################
#######################################################################################################################
###
###    Start reading the query hits
###
#######################################################################################################################
#######################################################################################################################

### Read query hits: export to RIS or 'MEDLINE' in PubMed.
rq2_ebscohost <- metabefor::importRISlike(file.path(queryResultsPath, "2015-03-24_RQ2_Ebscohost.ris"));
rq2_ovid <- metabefor::importRISlike(file.path(queryResultsPath, "2015-03-24_RQ2_Ovid_merged.ris"));
rq2_pubmed <- metabefor::importRISlike(file.path(queryResultsPath, "2015-03-24_RQ2_Pubmed.ris"));

rq2 <- findDuplicateReferences(rq2_ebscohost, rq2_ovid,
                               duplicateFieldValue = "dupl",
                               newRecordValue = "new (RQ2 Ovid)",
                               duplicateValue = "duplicate (RQ2 Ovid)",
                               originalValue = "original (RQ2 Ebscohost)");
rq2 <- findDuplicateReferences(rq2, rq2_pubmed,
                               duplicateFieldValue = "dupl",
                               newRecordValue = "new (RQ2 Pubmed)",
                               duplicateValue = "duplicate (RQ2 Pubmed)",
                               originalValue = "original (RQ2 merged)");

### Inspect duplicates
#cbind(rq2$output$records$isDuplicate, rq2$output$records$recordLog);

### Generate bibTexKeys for final database
rq2$output$records <- generateBibtexkeys(rq2$output$records);

### Store the database
sysrevExport(rq2,
             filename=file.path(screeningPath, "rq2_prescreening.bibtex"),
             screeningType="screening");

### Generate screener packages
screenerPackages <- buildScreenerPackage(libraryObject = rq2,
                                         screeners = c("s", "e"),
                                         fields = (c("title")),
                                         duplicateField = "isDuplicate",
                                         screenerFieldsSuffix = "sweep1",
                                         outputPath = file.path(screeningPath, "generated_sweep1"));

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the first screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

### Read screener files after first screening round
rq2_s1_s <- importBibtex(file.path(screeningPath, 'screened_sweep1', 'screening_s', 'screening_s_sweep1.bibtex'));
rq2_s1_e <- importBibtex(file.path(screeningPath, 'screened_sweep1', 'screening_e', 'screening_e_sweep1.bibtex'));

### Add field from screener e
rq2_s1_combined <- rq2_s1_s;
rq2_s1_combined$records$screeneresweep1 <- rq2_s1_e$records$screeneresweep1;

### correct names
names(rq2_s1_combined$records)[names(rq2_s1_combined$records) == 'screenerssweep1'] <-
  'rq2_s1_s';
names(rq2_s1_combined$records)[names(rq2_s1_combined$records) == 'screeneresweep1'] <-
  'rq2_s1_e';

### Create combined judgement field
rq2_s1_combined$records$rq2_s1 <-
  ifelse((tolower(rq2_s1_combined$records$rq2_s1_s) == 'incl') |
           (tolower(rq2_s1_combined$records$rq2_s1_e) == 'incl'), "incl", "excl");

### Verify
data.frame(combined = rq2_s1_combined$records$rq2_s1,
           s = rq2_s1_combined$records$rq2_s1_s,
           e = rq2_s1_combined$records$rq2_s1_e,
           bibtex = rq2_s1_combined$records$bibtexkey);

### Copy dataframe to $output subobject
rq2_s1_combined$output <- list(records = rq2_s1_combined$records);

### combine id fields into one unique id
rq2_s1_combined$output$records$uniqueid <- ifelse(is.na(rq2_s1_combined$output$records$id.record),
                                                     rq2_s1_combined$output$records$id.pubmed,
                                                     rq2_s1_combined$output$records$id.record);

### Save
sysrevExport(rq2_s1_combined,
             filename=file.path(screeningPath,
                                "rq2_screening1_combined.bibtex"),
             screeningType="screening");

### Generate screener packages second phase
screenerPackages <- buildScreenerPackage(libraryObject = rq2_s1_combined,
                                         screeners = c("s", "e"),
                                         basename = "rq2_s2_",
                                         fields = (c("title", "abstract", "rq2_s1")),
                                         duplicateField = NULL,
                                         sortField = 'rq2_s1',
                                         sortDesc = TRUE,
                                         screenerFieldsSuffix = "status2",
                                         outputPath = file.path(screeningPath, "generated_sweep2"),
                                         generateSettingRemovalBatchFile=TRUE);

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the second screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

tmp <- screeningProgress(screener1filename = file.path(screeningPath, 'screened_sweep2', 'rq2_s2_s', 'screening_s_sweep2.bibtex'),
                         screener2filename = file.path(screeningPath, 'screened_sweep2', 'rq2_s2_e', 'screening_e_sweep2.bibtex'),
                         screener1fieldname = "screenersstatus2",
                         screener2fieldname = "screenerestatus2",
                         combinedFieldname = "rq2_s2");

### Save combined database
sysrevExport(tmp,
             filename=file.path(screeningPath, "rq2_screening2_combined.bibtex"),
             screeningType="screening");

### Generate screener packages third phase
screenerPackages <- buildScreenerPackage(libraryObject = tmp,
                                         screeners = c("s", "e"),
                                         basename = "rq2_s3_",
                                         fields = (c("title", "abstract", "rq2_s2")),
                                         duplicateField = NULL,
                                         sortField = 'rq2_s2',
                                         sortDesc = TRUE,
                                         screenerFieldsPrefix = "rq2_s3_",
                                         screenerFieldsSuffix = "",
                                         outputPath = file.path(screeningPath, "generated_sweep3"),
                                         generateSettingRemovalBatchFile=TRUE);

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the third screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

tmp <- screeningProgress(screener1filename = file.path(screeningPath, 'screened_sweep3', 'rq2_s3_s', 'screening_sweep3_s.bibtex'),
                         screener2filename = file.path(screeningPath, 'screened_sweep3', 'rq2_s3_e', 'screening_sweep3_e.bibtex'),
                         screener1fieldname = "Rq2_s3_s",
                         screener2fieldname = "Rq2_s3_e",
                         combinedFieldname = "Rq2_s3");

### Save combined database
sysrevExport(tmp,
             filename=file.path(screeningPath, "rq2_screening3_combined.bibtex"),
             screeningType="screening");

