require 'amazon/ecs'

Amazon::Ecs.options = {
  :associate_tag => '',
  :AWS_access_key_id => '',
  :AWS_secret_key    => ''
}

res = Amazon::Ecs.item_lookup (
  '', :response_group => 'Small, ItemAttibutes, Images',
  : country => 'jp')

puts res.item.first.get("ItemAttributes/Title")

puts res.items.first.get("//FormattedPrice")

puts res.items.first.get("MediumImage/URL")
