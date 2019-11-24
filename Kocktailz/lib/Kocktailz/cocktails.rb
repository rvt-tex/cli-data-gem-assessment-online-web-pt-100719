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

    def update(args)
        args.each do |k,v|
            self.send("#{k}=", v) if self.respond_to?(k)
        end
    end
end 