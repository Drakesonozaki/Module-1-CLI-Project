class CLI

    def startup
        puts "Hello New Switch Owner, to find a good game for you
        we are going to look at the top switch games"
        sleep(3)
        puts "You have three options:"
        sleep(1.5)
        puts "1:See the top games [Metascore 90+]"
        sleep(1.5)
        puts "2:See games rated in the high 80s[89-87]"
        sleep(1.5)
        puts "3: Terminate Program"
        sleep(2.5)
        puts "Please enter a number 1-3 now to be take to the right place."
        user_choice = gets.strip

        if user_choice == "1"
            phrase = "Here are the games with a 90+ Metascore"
            puts phrase
            sleep(1.5)
            puts "enter a number between 1-23" 
            choice = gets.chomp
            indexed_choice = Games_select.to_i - 1
            Games.ninety[indexed_choice].game_info_display
            sleep(4)
            Games.looping


        elsif user_choice == "2"
            puts "Here are games with a High 80s Metascore"
            sleep(2)
            puts "enter a number between 1-41"
            choice = gets.chomp
            indexed_choice = ames_select.to_i - 1
            Games.eightys[indexed_choice].game_info_display
            sleep(4)
            Games.looping

        elsif user_choice == "3"
            puts "Hope you enjoyed the program!"
            puts "closing".upcase

        else
            puts "Invalid Input: returning to main program."
            startup
        end
    end
end


        