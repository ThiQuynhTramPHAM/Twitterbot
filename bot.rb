#!/usr/bin/env ruby

require 'Twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = " "
  config.consumer_secret     = " "
  config.access_token        = " "
  config.access_token_secret = " "
end

search_options = {
  result_type: "recent",
}


client.search("selfie", search_options).take(50).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
 client.favorite(tweet)
 client.update_with_media("@#{tweet.user.screen_name} Have Your Selfie a Merry Little Christmas personalize with your own text and photos! White envelope included with surprising price!! Connect now on https://www.cardstore.com/coffee/cinnamon?c3Product=3426668&authcode=2c9e5c835fba611c015ff30a734651a4&keyuid=4a68c1108ca8498e860351ebe7cd6f2e&template=cs_6109_0&cardquantity=1 to discover our offer!", File.new("/Users/admin/Downloads/thumb_dpi1020.jpg"))
 sleep 600
end





