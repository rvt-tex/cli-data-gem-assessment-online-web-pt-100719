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

    def invalidate_input?(letter)
        #binding.pry
         letter.match(/\W/) || letter.match(/[xu8]/)

    end 

    def list_cocktails   
        input = gets.chomp.downcase  
    if !invalidate_input?(input)
            Kocktailz::API.get_cocktails_db(input)
            Kocktailz::Cocktails.all.each.with_index do |d, i|
                puts "#{i + 1}. #{d.strDrink}"
            end 
                
    else
                puts "Not a Valid Option, Try another letter!"
              # input = gets.chomp.downcase  
                list_cocktails
    end 
    end 
         
    

    def more_info
        puts "Enter the number you would like to view more information on?:"
        
        input = gets.chomp.downcase
        #binding.pry
        if (1..Kocktailz::Cocktails.all.size).include?(input.to_i)
    
        cocktail = Kocktailz::Cocktails.all[input.to_i - 1]
        Kocktailz::API.get_single_cocktail(cocktail)

        puts "strDrink: #{cocktail.strDrink}"
        puts "idDrink: #{cocktail.idDrink}"
        puts "strCategory: #{cocktail.strCategory}"
        puts "strIngredient1: #{cocktail.strIngredient1}"
        puts "strIngredient2: #{cocktail.strIngredient2}"
        puts "strIngredient3: #{cocktail.strIngredient3}"
        puts "strInstructions: #{cocktail.strInstructions}"
        puts "strGlass: #{cocktail.strGlass}"
        puts "strAlcoholic: #{cocktail.strAlcoholic}"
        else 
            puts "sorry not a valid option try a different number"
            more_info
        end 
    end 

    def goodbye
        puts "Would you like to search for another cocktail? Enter Y or N: "
        input = gets.strip.downcase
        case input
        when "y"
            puts "Type the first letter of the cocktail you would like to search:"
            # clear all array that was there before   
            Kocktailz::Cocktails.all.clear  
            list_cocktails 
            more_info
            goodbye
        when "n"
            puts "Thanks for using Kocktailz!!!"
            puts "Tequila may not be the answer, but it's worth a shot."
        else
            puts "I don't understand that answer. Type Y or N"
        end
    end 
end 