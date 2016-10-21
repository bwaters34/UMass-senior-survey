# extraction

library(dplyr)
library(ggplot2)
library(nycflights13)
entiresurvey.df <- read.csv("senior_surveyCSV.csv", stringsAsFactors = FALSE)

section_indexes <- which(entiresurvey.df$X2015.UMass.Amherst.Graduating.Senior.Survey == "2015 UMass-Amherst Graduating Senior Survey Departmental Results")
majors_indexes <- section_indexes + 1
print(entiresurvey.df[majors_indexes,1])
majors <-entiresurvey.df[majors_indexes,1]
num_of_respondents <- entiresurvey.df[(majors_indexes+2),1]
num_of_respondents <- as.numeric(gsub("[^0-9]","",num_of_respondents))  #remove all non-numeric characters 
majors_vs_num_of_respondents.df <- cbind(majors,num_of_respondents)
majors_vs_num_of_respondents.df <- as.data.frame(majors_vs_num_of_respondents.df)
colnames(majors_vs_num_of_respondents.df) <- c("Major","Number of Respondents")

majors_plot <- ggplot(majors_vs_num_of_respondents.df,aes(factor(majors_vs_num_of_respondents.df$Major),majors_vs_num_of_respondents.df$`Number of Respondents`))
majors_plot + geom_bar(stat="identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1))



#TODO:  create new dataframe.  Set questions as rows, means as answer.










# As a math major, I've found out that I do my homework better drunk.  I just take a couple shots and I get like 90s on my homework