# File download gem
require 'net/ftp'

# Conversion gems
require "crack"
require "json"

# API Update gems
# require 'json'
require 'http'

# 1. Download the file
ftp = Net::FTP.new('ftp.salsify.com')
puts "Please enter your FTP Server Username: "
user = gets.chomp()
puts "Please enter your FTP Server Password: "
pw = gets.chomp()
puts "Please enter your Bearer Token:"
token = gets.chomp()
ftp.login(user, pw)
ftp.list('n*')
ftp.getbinaryfile('products.xml', 'products-local.xml', 1024)
puts "Your local file has been updated or created to reflect the remote file."
ftp.close

# 2. Convert the file from XML to JSON
myXML = Crack::XML.parse(File.read("products-local.xml"))
myJSON = myXML.to_json

File.open("products-local.json", "w") do |file|
    file.write(myJSON)
    puts "XML to JSON conversion complete and written to products-local.json"
end

# 3. Update the API with the JSON data
file = open("./products-local.json")
json = file.read
parsed = JSON.parse(json)
url = "https://app.salsify.com/api/v1/products/"
parsed["products"]["product"].each do |product|
    product_id = product["SKU"]
    body = product
    response = HTTP.headers(:Authorization => "Bearer " + token.to_s)
    .put('https://app.salsify.com/api/v1/products/' + product_id.to_s, :json => product)
    puts "Product Information updated! Please check the Salsify API..."
end

puts "If your bearer token was correct, the API data will change. Please check the Salsify API"

puts "All done! The script has completed it's function."