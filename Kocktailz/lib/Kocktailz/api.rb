class Kocktailz::API

    ROOT_URL= 'https://www.thecocktaildb.com/api/json/v1/1/search.php?'

    @@cocktail_letter = ''

        def self.get_cocktails_db(query)
           @@cocktail_letter = ('a'..'z')    #.to_a.sample
        response = HTTParty.get(ROOT_URL + "f=#{query}")
        #binding.pry
        #need to put in conditaional to check for empty hash, null returns
        response["drinks"].each do |drinks_hash|
            Kocktailz::Cocktails.new(drinks_hash)
        end 
        #binding.pry
        end 

        def self.get_single_cocktail(cocktail)

            if !cocktail.strDrink 
            response = HTTParty.get(ROOT_URL + "s=#{cocktail}")
            Kocktailz::Cocktails.update(response)
            end 
        end 
       #binding.pry
end 