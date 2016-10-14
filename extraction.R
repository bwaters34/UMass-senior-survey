# extraction

library(dplyr)
entiresurvey.df <- read.csv("senior_surveyCSV.csv")

section_indexes <- which(entiresurvey.df$X2015.UMass.Amherst.Graduating.Senior.Survey == "2015 UMass-Amherst Graduating Senior Survey Departmental Results")
majors_indexes <- section_indexes + 1
print(entiresurvey.df[majors_indexes,1])
majors <-entiresurvey.df[majors_indexes,1]

mat.df <- matrix(c(1:16),nrow = 4, ncol = 4)
rows <- c(1,4)
print(mat.df[rows,])
print(t(mat.df))
print(mat.df)
#TODO:  create new dataframe.  Set questions as rows, means as answer.

test.df <- t(mat.df[rows,])
