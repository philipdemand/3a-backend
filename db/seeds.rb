puts "🌱 Seeding spices..."

Item.destroy_all
Category.destroy_all

categories_list = ['Household', 'Automotive', 'Recreational', 'Electronics']

categories_list.each do |category_name|
  Category.create(name: category_name)
end

items_list = [
  { category_id: Category.find_by(name: 'Household').id, name: "Vitamix Blender", description: "Vitamix Blender - Works perfectly.", condition: "used", img_url: "https://rb.gy/xlk11", email_address: "bob@used-blender.com", price: 49 },
  { category_id: Category.find_by(name: 'Household').id, name: "Seat Cushions", description: "Purple Seat Cushions - Great for Front Porch.", condition: "used", img_url: "https://rb.gy/qgab9", email_address: "becky@used-cushions.com", price: 25 },
  { category_id: Category.find_by(name: 'Automotive').id, name: "Toyota Alternator", description: "2017 Toyota Tundra Alternator.", condition: "used", img_url: "https://rb.gy/l1nrr", email_address: "bill@used-toyota-parts.com", price: 80 },
  { category_id: Category.find_by(name: 'Automotive').id, name: "Lexus Headlight", description: "2012-2014 Lexus RX350 Driver Side Headlight. Tested: Good", condition: "used", img_url: "https://rb.gy/2nznt", email_address: "brian@used-lexus-parts.com", price: 175 },
  { category_id: Category.find_by(name: 'Recreational').id, name: "Cobra-Play Kayak", description: "Like-New Kayak, with paddle. Fun!", condition: "used", img_url: "https://rb.gy/o71af", email_address: "bella@buymykayak.com", price: 200 },
  { category_id: Category.find_by(name: 'Recreational').id, name: "Barbells", description: "Urethane barbells, 35, 40, 45 lbs.", condition: "used", img_url: "https://tinyurl.com/3v7zxsrh", email_address: "bart@barbells4us.com", price: 75 },
  { category_id: Category.find_by(name: 'Electronics').id, name: "Portable CD Player", description: "Sony Portable Discman. Totally 90's!", condition: "used", img_url: "https://tinyurl.com/4xcv7t53", email_address: "benjamin@benscdplayer.com", price: 20 },
  { category_id: Category.find_by(name: 'Electronics').id, name: "TP-Link Mesh Routers", description: "Deco X25 Whole Home System.  Tested: Good.", condition: "used", img_url: "https://tinyurl.com/2mf8zbwp", email_address: "beatrix@buythisrouter.com", price: 149 },
]

items_list.each do |item_params|
  Item.create(item_params)
end

puts "✅ Done seeding!"
