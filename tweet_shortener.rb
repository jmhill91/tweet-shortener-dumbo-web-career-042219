def dictionary
  dictionary= {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too"=>'2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at"=> "@",
    "and"=> "&"
  }
end 

def word_substituter(tweets)
  tweets.split.collect do |char|
    if dictionary.keys.include?(char.downcase)
      char=dictionary[char.downcase]
    end
    char
  end.join(" ")
end


def bulk_tweet_shortener(arr)
 arr.each do |tweet|
   puts word_substituter(tweet)
 end
 end
  
  
  def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  end
  
  
  