# Tweeter Download and Analysis
#connect all libraries
library(twitteR)
library(ROAuth)
library(plyr)
library(dplyr)
library(stringr)
library(ggplot2)
#Certificate not Required
#load("twitter authentication.Rdata")
#https://dataaspirant.com/2018/03/22/twitter-sentiment-analysis-using-r/

consumerKey="nRgOVg0U7bI1ytAMiA6kxZwoL"
consumerSecret="5fTHnNqkI7fy6Gj7AKa5VioMdDQyh9j8SToqrsWnwpsmyY5AjZ"
AccessToken="748948860605566976-wmcrkPmyYsCzlm8xZKOxbnzTj8dRh3T"
AccessTokenSecret="SaY9TffTC4qb0UrtvRitguWs2P4h9PbXazyHCKvWfAVoa"


#---- Alread saved authentication  
load('twitter authentication.Rdata') #Once you launch the code first time, you can start from this line in the future (libraries should be connected)
setup_twitter_oauth(ConsumerKey, ConsumerSecret, AccessToken, AccessTokenSecret)

tweets <- userTimeline("realDonaldTrump", n=200)
n.tweet <- length(tweets)
n.tweet
tweets.df <- twListToDF(tweets) 
head(tweets.df)
summary(tweets.df)

#Remove hashtags & unnecessary characters
tweets.df2 <- gsub("http.*","",tweets.df$text)
tweets.df2 <- gsub("https.*","",tweets.df2)
tweets.df2 <- gsub("#.*","",tweets.df2)
tweets.df2 <- gsub("@.*","",tweets.df2)

head(tweets.df2)
#-----
library("syuzhet")
word.df <- as.vector(tweets.df2)
emotion.df <- get_nrc_sentiment(word.df)
emotion.df2 <- cbind(tweets.df2, emotion.df) 
head(emotion.df2)

#-----
sent.value <- get_sentiment(word.df)
most.positive <- word.df[sent.value == max(sent.value)]
most.positive
most.negative<- word.df[sent.value <= min(sent.value)] 
most.negative
sent.value

#-----
positive.tweets <- word.df[sent.value > 0]
head(positive.tweets)
negative.tweets <- word.df[sent.value < 0] 
head(negative.tweets)
neutral.tweets <- word.df[sent.value == 0]
head(neutral.tweets)
#----
# Alternate way to classify as Positive, Negative or Neutral tweets
category_senti <- ifelse(sent.value < 0, "Negative", ifelse(sent.value > 0, "Positive", "Neutral"))
head(category_senti)
category_senti2 <- cbind(tweets,category_senti,sent.value) 
head(category_senti2)

#----
table(category_senti)

