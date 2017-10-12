require 'open-uri'
require 'nokogiri'

# Exercice 1:

lien = "http://annuaire-des-mairies.com/val-d-oise.html"
lienemail= "http://annuaire-des-mairies.com/95/vaureal.html"

def get_the_email_of_a_townhal_from_its_webpage

	doc = Nokogiri::HTML(open(lienemail))

mail = doc.css("p:contains('@')").text
mairie = doc.css("strong a").text

puts "la ville de #{mairie}: #{mail}."

end

#------------------------------------------------


# Exercice 2

def get_all_the_urls_of_val_doise_townhalls

doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

url = doc.css("a.lientxt")
url.each{|link| puts link['href']}

puts url.class 

end 