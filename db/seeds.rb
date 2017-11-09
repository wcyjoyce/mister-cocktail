puts "Cleaning database..."
Ingredient.destroy_all

require "open-uri"
require "nokogiri"
require "json"

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
document = open(url).read
ingredients = JSON.parse(document)

ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end
puts "Created ingredient seeds from external file!"

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin and Tonic")
Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Cosmopolitan")
