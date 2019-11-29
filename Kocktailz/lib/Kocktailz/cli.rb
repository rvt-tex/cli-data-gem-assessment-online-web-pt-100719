class Kocktailz::CLI


    def call 
    puts "                                            ==         "
    puts "                                           ==          "
    puts "                                          ==           "
    puts "     ---------------------------------------           "
    puts "       -----------------------------------             "
    puts "         -------------------------------               "
    puts "           ----------WELCOME-----------                "
    puts "             -----------TO-----------                  "
    puts "               ------KOCKTAILZ-----                    "
    puts "                 ----------------                      "
    puts "                   ------------                        "
    puts "                     --------                          "
    puts "                      ------                           "
    puts "                       ====                            "
    puts "                        ==                             "
    puts "                        ==                             "
    puts "                        ==                             "
    puts "                        ==                             "
    puts "                        ==                             "
    puts "               ======================                  "
    greet_user
    list_cocktails 
    more_info
    goodbye
    end 

    def greet_user
        puts "whats is your name?"
        name = gets.strip.capitalize
        puts "#{name}, please type the first letter of the cocktail you would like to search:" 
    end

    def more_info
        puts ""
        puts "Enter the number you would like to view more information on?:"

            input = gets.strip.downcase
        puts ""
        cocktail = Kocktailz::Cocktails.all[input.to_i - 1]
        Kocktailz::API.get_single_cocktail(cocktail)

        puts "strDrink: #{cocktail.strDrink}"
        puts "idDrink: #{cocktail.idDrink}"
        puts "strCategory: #{cocktail.strCategory}"
        puts "strAlcoholic: #{cocktail.strAlcoholic}"
        #puts "strGlass: #{cocktail.strGlass}"
        puts "strInstructions: #{cocktail.strInstructions}"
        #puts "strIngredient1: #{cocktail.strIngredient1}"
        #puts "strIngredient2: #{cocktail.strIngredient2}"
        #puts "strIngredient3: #{cocktail.strIngredient3}"
    end

    def goodbye
        puts "Would you like to search for another cocktail? Enter Y or N: "
        puts ""
        input = gets.strip.downcase

        case input
        when "y"
        start
        when "n"
            puts ""
            puts "Thanks for using Kocktailz!!!"
            puts "Tequila may not be the answer, but it's worth a shot."
            puts ""
        else
            puts ""
            puts "I don't understand that answer. Type Y or N"
            puts ""
        end
    end 
end 