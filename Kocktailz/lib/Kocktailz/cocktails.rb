class Kocktailz::Cocktails

    attr_accessor :strDrink,:strCategory, :strAlcoholic, :strGlass, :strInstructions, :ingredients
                    
    
 
    @@all = []

    def initialize(args)
        @ingredients = []
        update(args)
        @@all << self
        #binding.pry
    end

    def self.all
        @@all
    end

    def update(args)
        args.each do |k,v|
            if k.include?"Ingredient"
                @ingredients << v
            else 
                self.send("#{k}=", v) if self.respond_to?(k)
            end
    end 
        
    end

    def ingredients
        @ingredients.compact.join(", ") 
    end 
        
end  