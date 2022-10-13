require 'nokogiri'
require 'open-uri'

def source(url_mairie)
    nom_commune = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
    nom = nom_commune.xpath('//div/main/section[1]/div/div/div/h1').text
    return nom[0..-9]
end

def source_bis
    specific_url = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
    url_mairie = specific_url.map {|x| "htpps://www.annuaire-des-mairies.com"} + x.text[]
    return url_mairie
end