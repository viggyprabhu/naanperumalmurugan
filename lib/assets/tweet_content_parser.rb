require_relative "../../app/models/line.rb"
class TweetContentParser

	MAIN_HASHTAG='#NaanPerumal'
    CHAP_HASHTAG='Chap'
    LINE_HASHTAG='Line'
	
	def parse(tweets)
		tweets.each do |tweet|
	  		if(!tweet.retweeted?)
	        	if !Line.exists?(:tweet_id => tweet.id)
	   				content = tweet.text
	   				if(content.include?(MAIN_HASHTAG) && content.include?(CHAP_HASHTAG) && content.include?(LINE_HASHTAG))
		   				content.gsub(MAIN_HASHTAG,"")
						chap = content.match(CHAP_HASHTAG+'(\d+)').captures[0]

						linenum = content.match(LINE_HASHTAG+'(\d+)').captures[0]
						content.gsub(CHAP_HASHTAG+chap,"").gsub(LINE_HASHTAG+linenum,"")
						
						text = get_tweet_content(content)
						store_tweet(tweet.user.screen_name, tweet.user.profile_image_url, chap, linenum, text, tweet.id)
		   			end
	        	end
	    	end
	    end
	end

	def get_tweet_content(str)
		#cont = str[str.index(':')+1, str.length]
		cont = str.scan(/\'([^"]*)\'/).first.first
		return cont
	end

	def store_tweet(name,profile_pic, chapnum,linenum,text,tweet_id)
		if !Author.exists?(:name => name)
			Author.create(:name => name, :profile_pic => profile_pic.to_s)
		end	
		@author = Author.where(:name => name).first
		Line.create({:content => text, :chapter => chapnum, :linenumber => linenum, :author_id=> @author.id, :tweet_id => tweet_id})
	end

end