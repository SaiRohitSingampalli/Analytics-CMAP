# Use Existing Twitter Authentication Stored
# Marketing Analytics


library("twitteR")
library("ROAuth")

# Certificate not Required
#load("twitter authentication.Rdata")

consumerKey="nRgOVg0U7bI1ytAMiA6kxZwoL"
consumerSecret="5fTHnNqkI7fy6Gj7AKa5VioMdDQyh9j8SToqrsWnwpsmyY5AjZ"
AccessToken="748948860605566976-wmcrkPmyYsCzlm8xZKOxbnzTj8dRh3T"
AccessTokenSecret="SaY9TffTC4qb0UrtvRitguWs2P4h9PbXazyHCKvWfAVoa"

load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(ConsumerKey, ConsumerSecret, AccessToken, AccessTokenSecret)

search.string <- "@dupadhyaya"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets


homeTimeline(n=15)  #my tweets
mentions(n=15)   # my tags
