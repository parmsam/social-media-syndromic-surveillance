#install package
#install.packages("rtweet")

#load package ####
library(rtweet)
library(tidyverse)

#from documentation get some test data to build classifier ####
## Stream keywords used to filter tweets
#by default is the past 7 days
query = "food poison OR food poisoning OR diarrhea OR vomiting"
query2 = "marijuana OR weed OR cocaine OR heroin"

hrc <- search_tweets(q = query, n = 1000,
                     geocode = "39.7684,-86.1581,30mi", 
                     lang = "en")
View(hrc)

#build classifier from multiple datasets ####