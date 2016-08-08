
# turn off stringsAsFactors because they make analysis hard

options(stringsAsFactors = FALSE)

# load packages

suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(plyr))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(dplyr))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(ggplot2))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(scales))))

# load the general payments dataset
dat <- read.csv('./data/PGYR15_P063016/OP_DTL_RSRCH_PGYR2015_P06302016.csv')

# GNRL File Columns Exported
# Teaching_Hospital_ID,
# Teaching_Hospital_Name,
# Physician_Profile_ID,
# Physician_First_Name,
# Physician_Last_Name,
# Recipient_City,
# Recipient_State,
# Recipient_Zip_Code,
# Physician_Primary_Type,
# Physician_Specialty,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
# Total_Amount_of_Payment_USDollars,
# Date_of_Payment,
# Form_of_Payment_or_Transfer_of_Value,
# Nature_of_Payment_or_Transfer_of_Value,
# City_of_Travel,
# State_of_Travel,
# Country_of_Travel,
# Charity_Indicator,
# Name_of_Associated_Covered_Drug_or_Biological1,
# NDC_of_Associated_Covered_Drug_or_Biological1,
# Name_of_Associated_Covered_Device_or_Medical_Supply1

# RSRCH File Columns Exported
# Teaching_Hospital_ID,
# Teaching_Hospital_Name,
# Physician_Profile_ID,
# Physician_First_Name,
# Physician_Last_Name,
# Recipient_City,
# Recipient_State,
# Recipient_Zip_Code,
# Physician_Primary_Type,
# Physician_Specialty,
# Principal_Investigator_1_Profile_ID,
# Principal_Investigator_1_First_Name,
# Principal_Investigator_1_Last_Name,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
# Product_Indicator,
# Name_of_Associated_Covered_Drug_or_Biological1,
# NDC_of_Associated_Covered_Drug_or_Biological1,
# Name_of_Associated_Covered_Device_or_Medical_Supply1,
# Total_Amount_of_Payment_USDollars,
# Date_of_Payment,
# Form_of_Payment_or_Transfer_of_Value,
# Name_of_Study,
# ClinicalTrials_Gov_Identifier,
# Context_of_Research

# OWNRSHP File Columns Exported
# Physician_First_Name,
# Physician_Last_Name,
# Recipient_City,
# Recipient_State,
# Recipient_Zip_Code,
# Physician_Primary_Type,
# Physician_Specialty,
# Total_Amount_Invested_USDollars,
# Value_of_Interest,
# Terms_of_Interest,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
# Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
# Interest_Held_by_Physician_or_an_Immediate_Family_Member,
# Payment_Publication_Date

# # some of the cities are Proper Case and Others are all uppercase, so standardize them
# dat$Recipient_City <- toupper(dat$Recipient_City)
# 
# dat_local <- dat %>% 
#   filter(Recipient_City %in% c('VIRGINIA BEACH',
#                                'NORFOLK',
#                                'CHESAPEAKE',
#                                'NEWPORT NEWS',
#                                'HAMPTON'),
#          Recipient_State == 'VA') %>%
#   select(Teaching_Hospital_ID,
#          Teaching_Hospital_Name,
#          Physician_Profile_ID,
#          Physician_First_Name,
#          Physician_Last_Name,
#          Recipient_City,
#          Recipient_State,
#          Recipient_Zip_Code,
#          Physician_Primary_Type,
#          Physician_Specialty,
#          Principal_Investigator_1_Profile_ID,
#          Principal_Investigator_1_First_Name,
#          Principal_Investigator_1_Last_Name,
#          Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID,
#          Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
#          Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
#          Product_Indicator,
#          Name_of_Associated_Covered_Drug_or_Biological1,
#          NDC_of_Associated_Covered_Drug_or_Biological1,
#          Name_of_Associated_Covered_Device_or_Medical_Supply1,
#          Total_Amount_of_Payment_USDollars,
#          Date_of_Payment,
#          Form_of_Payment_or_Transfer_of_Value,
#          Name_of_Study,
#          ClinicalTrials_Gov_Identifier,
#          Context_of_Research)
# 
# write.csv(dat_local, './data/local-cities-research.csv', row.names=F)