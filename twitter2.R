#Twitter 1 - Working using my Keys
library("curl")
library("twitteR")
library("ROAuth")

download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#different for each account
consumerKey="nRgOVg0U7bI1ytAMiA6kxZwoL"
consumerSecret="5fTHnNqkI7fy6Gj7AKa5VioMdDQyh9j8SToqrsWnwpsmyY5AjZ"
AccessToken="748948860605566976-wmcrkPmyYsCzlm8xZKOxbnzTj8dRh3T"
AccessTokenSecret="SaY9TffTC4qb0UrtvRitguWs2P4h9PbXazyHCKvWfAVoa"

#Commont for all accounts except the keys

cred <- OAuthFactory$new(consumerKey=consumerKey, consumerSecret=consumerSecret, requestURL='https://api.twitter.com/oauth/request_token', accessURL='https://api.twitter.com/oauth/access_token', authURL='https://api.twitter.com/oauth/authorize')


cred$handshake(cainfo="cacert.pem") # it will take browser
save(cred, file="twitter authentication.Rdata") # store this to avoid asking again


#Load saved authentication cert
load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(consumerKey, consumerSecret, AccessToken, AccessTokenSecret)

search.string <- "#Sharukhkhan"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets
