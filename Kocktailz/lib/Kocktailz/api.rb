class Kocktailz::API

    ROOT_URL= 'https://www.thecocktaildb.com/api/json/v1/1/search.php?'

    @@cocktail_letter = ''
        
        def self.get_cocktails_db(query)
           @@cocktail_letter = ('a'..'z') 
        
        response = HTTParty.get(ROOT_URL + "f=#{query}")
        response["drinks"].each do |drinks_hash|
            Kocktailz::Cocktails.new(drinks_hash)
        end 
        end 

        def self.get_single_cocktail(cocktail)
            if !cocktail.strDrink 
            response = HTTParty.get(ROOT_URL + "s=#{cocktail}")
            Kocktailz::Cocktails.update(response)
            end 
        end
end 