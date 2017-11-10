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

Cocktail.create(
  name: "Mojito",
  description: "Mojito is a traditional Cuban highball. Traditionally, a
  mojito is a cocktail that consists of five ingredients: white rum, sugar
  (traditionally sugar cane juice), lime juice, soda water, and mint. The
  original Cuban recipe uses spearmint or yerba buena, a mint variety very
  popular on the island. Its combination of sweetness, citrus, and mint
  flavours is intended to complement the rum, and has made the mojito a
  popular summer drink."
)

Cocktail.create(
  name: "Gin and Tonic",
  description: "A gin and tonic is a highball cocktail made with gin and
  tonic water poured over ice. It is usually garnished with a slice or wedge
  of lime. The amount of gin varies according to taste."
)

Cocktail.create(
  name: "Old Fashioned",
  description: "The Old Fashioned is a cocktail made by muddling sugar with
  bitters, then adding alcohol, such as whiskey or brandy, and a twist of
  citrus rind. It is traditionally served in a short, round, tumbler-like
  glass, which is called an Old Fashioned glass, named after the drink. The
  Old Fashioned, developed during the 19th century and given its name in the
  1880s, is an IBA Official Cocktail."
)

Cocktail.create(
  name: "Martini",
  description: "The martini is a cocktail made with gin and vermouth, and
  garnished with an olive or a lemon twist. Over the years, the martini has
  become one of the best-known mixed alcoholic beverages."
)

Cocktail.create(
  name: "Cosmopolitan",
  description: "A cosmopolitan, or informally a cosmo, is a cocktail made
  with vodka, triple sec, cranberry juice, and freshly squeezed or sweetened
  lime juice. Though often presented far differently, the cosmopolitan also
  bears a likeness in composition to the kamikaze cocktail. The origin of the
  cosmopolitan is disputed. It is widely believed that the drink was created
  independently by different bartenders since the 1970s."
)

puts "Created cocktail seeds!"
