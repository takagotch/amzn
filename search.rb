require 'open-uri'
require 'nokogiri'
require 'uri'

search_word = URI.escape("crawler")
url =
	"http://www.amazon.co.jp/s/ref=nb_sb_noss?url=
	search-alias%3Dstripbooks&field-keywords=
	#{search_word}"

doc = Nokogiri::HTML(open(url))
doc.xpath("//h3[@class='newaps']/a").each {|item|
	puts itemp[.match(%r{dp/(.+)})[1]
}

