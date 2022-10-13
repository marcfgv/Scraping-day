require 'rubygems'
require 'nokogiri'
require 'open-uri'
def scraper 
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
end
scraper