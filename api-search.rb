require 'amazon/ecs'

Amazon::Ecs.options = {
  :associate_tag => 'sampleapp-22',
  :AWS_access_key_id => 'AWS_ACCESS_KEY',
  :AWS_secret_key => 'AWS_SECRET_ACCESS_KEY'
}

res = Amazon::Ecs.item_search(
  'crawler', :search_index => 'Books', :country => 'jp')
res.item.each do |item|
  puts item.get('ASIN')
end

