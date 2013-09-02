# Saves all outgoing links on the specified page to a file

require 'nokogiri'
require 'open-uri'

def main
	doc = Nokogiri::HTML(open('http://phansch.net/index.html'))

	File.open('links.txt', 'w') do |file|
		doc.css('a').each do |link|
			file.puts link['href'] if link['href'].start_with?('http')
		end
	end
end

main