require ''
require ''

asin = "product_id"
url= "http://www.amazon.co.jp/dp/#{asin}"

doc = Nokogiri::HTML(open(url))

puts doc.xpath("//span[@id='btAsinTitle']").text

puts doc.xpath("//span[@id='actualPriceValue']/b").text

puts doc.xpath("//img[@id='prodImage']")/attribute("src").text
