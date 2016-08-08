# open-payments
Analysis of the 2015 Program Year Open Payments Dataset

## Overview
Open Payments is a federal program, required by the Affordable Care Act, that collects information 
about the payments drug and device companies make to physicians and teaching hospitals for things 
like travel, research, gifts, speaking fees, and meals. It also includes ownership interests that 
physicians or their immediate family members have in these companies.

## Goals
Perform an analysis that outlines the activity of local medical professionals in receiving payments as reported 
by the Open Payments dataset.

## Project Roadmap
[Open Payments Trello Board](https://trello.com/b/GtFYXDgy/twitter-account-analysis)

## Data Source
Data obtained through [CMS.gov Open Payments Website](https://www.cms.gov/OpenPayments/index.html)

The dataset is comprised of three (3) character-separated value (.csv) format files that use commas as delimiters. 
Descriptions of each file are provided below. Unfortunately, the files are too large to share via GitHub, so 
only a sample of Norfolk, VA Beach, Chesapeake, Hampton, and Newport News has been included in the repository.

  1. OP_DTL_GNRL_PGYR2015_P06302016.csv: 
  This file contains the data set of General Payments reported for the 2015 program year. General Payments are 
  defined as payments or other transfers of value made to a covered recipient (physician or teaching hospital) 
  that are not made in connection with a research agreement or research protocol.
  
  2. OP_DTL_RSRCH_PGYR2015_P06302016.csv:
  This file contains the data set of Research Payments reported for the 2015 program year. Research Payments 
  are defined as payments or other transfers of value made in connection with a research agreement or 
  research protocol.

  3. OP_DTL_OWNRSHP_PGYR2015_P06302016.csv:
  This file contains the data set of Ownership and Investment Interest information reported for the 2015 
  program year. Ownership and Investment Interest Information is defined as information about the value of 
  ownership or investment interests that a physician or an immediate family member of a physician held in 
  an applicable manufacturer or applicable group purchasing organization (GPO).  

## Data Storage with Git Large File Store
This project has been initialized with `git lfs track "*.csv"`. This allows for a more seamless experience
with large files. You will need to install git lfs before cloning the repository to get the data. Don't worry it's easy. 
More information about git lfs and how to install it can be found [here](https://git-lfs.github.com/).
 
## Getting Started with R
This project has been created and initialized with Packrat (a package management system for enhanced reprodicibility
in R). This means that if you need additional libraries, just run `install.packages()` and the resulting 
packages will be installed in the packrat library so that other users will have exactly the same configuration
as you! Plus, this won't mess with your existing set of installed packages on your personal computer. Here is a 
simple workflow with Packrat:

```
> install.packages('ggplot2')
> packrat::snapshot(prompt = FALSE)
Adding these packages to packrat:
         _      
    ggplot2        2.1.0
```