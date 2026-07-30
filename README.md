## Paul's contact

paul.stewart@hci.utah.edu

## Metabolomics Data Analysis Workshop July 2026

### Slido link:

<https://app.sli.do/event/cvziGfmAsGmoKExrhKizwj>

### Link to this Repository:

<https://github.com/pstew/metabolomics_workshop_2026>

#### Backup copy because GitHub is going slow:

https://uofu.box.com/v/metab-workshop-2026


### R/RStudio download

<https://cran.r-project.org>

<https://posit.co/download/rstudio-desktop/>

### Materials

- Intro
- GitHub
  - What it is
  - Getting files for today
  - Project folder structure
    - source files
    - data
    - scripts
    - work (or results)
  - Importance of staying organized
    - More reading: <https://pmc.ncbi.nlm.nih.gov/articles/PMC2709440/>
- Getting started with R: <https://monashbioinformaticsplatform.github.io/r-intro/start.html>
- Let's look at data/20260604_SchwertzH_Data.xlsx
  - For 100% reproducibility, we want to minimize data handling in Excel because Excel is prone to errors.
  - File names are important (and can potentially contain important meta data)
    - Where it came from/what it is
  - Questions to ask: what am I looking at? Are there the right number of samples? How many features (e.g. metabolites)? Has the data been processed in any way? What annotations are there? Experimental groups? Do sample names need a mapping table (e.g. sample_01, sample_02, sample_03) so we know what experimental group they belong to?
    - Samples are rows and metabolites are columns. Group/Sample has important "meta data" about the samples/experiment.
    - There are 36 samples across multiple conditions. Some QC samples too.
  - 122 features in the last sheet, but note not all are metabolites.
    - Consistent with semi-targeted metabolomics dataset.
    - Fewer features than expected can indicate sample or sample prep issues.
    - Very few features means it is likely a targeted experiment (and I might not be on the same page as to what kind of experiment was performed).
  - First few tabs are raw intensities. Last few tabs look to have been processed/normalized because there are decimals.
    - One tab name confirms it: "SERRF", which is a QC-based normalization approach <https://slfan2013.github.io/SERRF-online/>
    - Final tabs appear to have been imputed (missing values were replaced with some value or values).
  - Let's use the information we have to make a separate table that contains the meta data.
    - A text editor like <https://www.sublimetext.com> can really help speed up basic text manipulation. This could mostly be done in RStudio as well.
    - Critically important for understanding what data we have and staying organized in our analysis.
      - Avoids "hard coding" of samples.
      - Easy to add additional data later as it becomes available.
    - We need unique column names. R will see duplicated column names and handle them implicitly, but this can be prone to errors and lead to confusion for beginners.
    - Save the resulting file with descriptive-name_yyyy-mm-dd in data folder as a tab delimited text file.
      - Tab delimited files are generally a good idea because commas show up in feature names (e.g. nucleotides), which can make comma delimited files (.csv) less ideal.
      - Use yyyy-mm-dd date format for sorting.
    - In R we will define the first row as the column header so we can refer to specific samples/conditions.
    - Save in data folder as a tab delimited text file.
  - Paste the transpose of the normalized abundances from the last tab to make a new file with metabolites in rows and samples as columns.
    - Save in data folder as a tab delimited text file.
  - Switch back to RStudio (see R markdown file).
