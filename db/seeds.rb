Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

require "open-uri"
require "nokogiri"

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# document = Nokogiri::HTML(open(url))

# document.search("drinks").each do |ingredient|
#   ingredient = bar.search("strIngredient1")

#   Ingredient.create!({ name: name })
#   puts "Ingredient created: #{name}"
# end
