class Kocktailz::Cocktails

    attr_accessor :strDrink, :idDrink, :strCategory
 
    @@all = []

    def initialize(args)
        update(args)
        @@all << self
    end

    def self.all
        @@all
    end
    
end 