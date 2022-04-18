# Conversion gems
require "crack"
require "json"

myXML = Crack::XML.parse(File.read("products-local.xml"))
myJSON = myXML.to_json

File.open("products-local.json", "w") do |file|
    file.write(myJSON)
    puts "XML to JSON conversion complete and written to products-local.json"
end