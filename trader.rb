#def trade_prices

require 'rubygems'
require 'nokogiri'
require 'open-uri'

lien = "https://coinmarketcap.com/all/views/all/"

doc = Nokogiri::HTML(open(lien))

#puts doc.class

name = doc.xpath("//*[@id="id-bitcoin"]/td[2]/a")[0].text
#price = doc.css(".price")[0].text

#stock = [[name], [price]]
#stock [0][0] 

puts name

#puts stock 

#end 