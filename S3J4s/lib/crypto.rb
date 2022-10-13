require 'rubygems'
require 'nokogiri'
require 'open-uri'
def scraper 
    doc = Nokogiri::HTML5(URI.open('https://coinmarketcap.com/all/views/all/'))
end


def fusiontab(tab1,tab2)
    return Hash[tab1.zip(tab2)]
end

def crypto(page)
    array_name=[]
    array_value=[]
    name_of_crypto=page.xpath('//tbody/tr[1]/td[3]')
    value_of_crypto=page.xpath('//tbody/tr/td[5]/div/a/span')
    hash={}
    name_of_crypto.each{ |name|
        array_name<<name.text
    }
    value_of_crypto.each{|price|
        array_value << price.text
    }
    hash=fusiontab(array_name,array_value)
    return hash
end
puts scraper