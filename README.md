===NaanPerumalMurugan===

This is an attempt to show solidarity with the author Perumal Murugan and stand with him against all the fundamentalists forces trying to silence him.

It is a simple Rails web app which aggregates various tweets of a particular format. Each line is tweeted by an individual who wants to express his/her support for the author and tweeting the line from the book, he/she expresses his/her support. It is important as currently some minority group is deciding for the whole world whether a book should be allowed to exist or not and we cannot let that happen.

====Technical details ====

Aggregation of tweets is being done using a rake task and it can be run as shown below

bin/rake twitter_cron_job:get_latest_tweets

Please note that you need to generate twitter keys and have it in your environment as

CONSUMER_KEY and CONSUMER_SECRET variables.