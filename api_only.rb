# API Update gems
require 'json'
require 'http'

puts "Enter your Bearer Token:"
token = gets.chomp()

# 3. Update the API with the JSON data
file = open("./products-local.json")
json = file.read
parsed = JSON.parse(json)
parsed["products"]["product"].each do |product|
    product_id = product["SKU"]
    body = product
    response = HTTP.headers(:Authorization => "Bearer " + token)
    .put('https://app.salsify.com/api/v1/products/' + product_id.to_s, :json => product)
    puts "Product Information updated! Please check Salsify..."
end

puts "If your bearer token was correct, the API data will change. Please check the Salsify API"
puts "Job complete."