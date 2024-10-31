require 'nokogiri'   
require 'open-uri'

PAGE_URL = "https://rordev.tech/"

page = Nokogiri::HTML(URI.open(PAGE_URL))

# the <title> element
# puts page.css('title')

# the name of the element
# puts page.css('title')[0].name

# all <p> elements
# puts page.css('p')

# the text of the first <p> element
# puts page.css('p').first.text

# the text of the fourth <p> element
# puts page.css('p')[3].text

# all the <a> elements with a class of 'secondary'
# puts page.css('a.secondary')

# all the <input> elements with an attribute of 'required'
# puts page.css('input[required]')

# the <p> element with an id of 'weather'
# puts page.css('p#weather')

# code_links = page.css('a').select { |link| link['href'].include?('github.com') }
# code_links.each{ |link| puts link['href'] }
# puts code_links.class

# the <a> elements inside the <footer>
puts page.css('footer a')
