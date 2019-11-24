class Kocktailz::API

    ROOT_URL= 'https://www.thecocktaildb.com/api/json/v1/1/search.php?'

    @@cocktail_letter = ''

        def self.get_cocktails_db(query)
           @@cocktail_letter = ('a'..'z')    #.to_a.sample

        response = HTTParty.get(ROOT_URL + "f=#{query}")
        
        response["drinks"].each do |drinks_hash|
            Kocktailz::Cocktails.new(drinks_hash)
        end 
        end 
end 