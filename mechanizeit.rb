require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://www.google.com/')

form = page.forms[0]

form["q"] = "Biniam Girmay"

result_page = form.submit

puts result_page.links.map(&:href)


