
# turn off stringsAsFactors because they make analysis hard

options(stringsAsFactors = FALSE)

# load packages

suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(plyr))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(dplyr))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(ggplot2))))
suppressMessages(suppressWarnings(suppressPackageStartupMessages(library(scales))))

dat <- read.csv('./data/local-cities-general.csv')

# head(sort(table(dat$Physician_Profile_ID), decreasing=T),6)

# breakdown of payments by nature ---------------------------------------------------------------------------------------
dat %>% 
  group_by(Nature_of_Payment_or_Transfer_of_Value) %>% 
  summarize(total=sum(Total_Amount_of_Payment_USDollars)) %>%
  ungroup()

# plotting daily expenditure of a very frequent reporter ----------------------------------------------------------------

ggplot(daily_expenditure, aes(as.Date(Date_of_Payment, format='%m/%d/%Y'), daily_total)) + 
  geom_point() + 
  geom_line() + 
  geom_smooth(method="loess", size=.75) +
  scale_x_date(breaks = date_breaks("1 month"),
               labels = date_format("%b-%y")) + 
  scale_y_continuous(labels=dollar, breaks=pretty_breaks(n=10)) + 
  xlab("Date") + 
  ylab("Food & Beverage Expediture") + 
  ggtitle(paste0('Total Food & Beverage Expediture - ',
                 dollar(sum(daily_expenditure$daily_total)))) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        axis.text=element_text(size=12),
        axis.title=element_text(size=14, face="bold"),
        plot.title = element_text(color="black", face="bold", size=24, hjust=0))
