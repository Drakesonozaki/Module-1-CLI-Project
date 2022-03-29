class Games
    @@all = []
    attr_accessor :title , :score, :about, :came_out, :rank_position, :more_info, :rating, :game, :details, :developer, :genre, :online, :esrb, :purchase

    def intialize(title, score, came_out, about, more_info)
        @title = title
        @score = score
        @came_out = came_out
        @about = about
        @more_info = more_info
    end

    def self.all
        @@all
    end

    def print_game_data
        puts "{@title} hit the market on {@came_out} with a Average review score of {@score}"
    end

    def ninety
        ninety = Game.all.select{|game| game.score >= 90}
        ninety each_with_index do|game, position|
            puts "Game #{position += 1}"
            game.print_game_data
            puts ""
        end
    end

    def eightys
        eightys = Game.all.select{|game| game.score <= 89 && >= 87}
        eightys each_with_index do|game, position|
            puts "Game #{position += 1}"
            game.print_game_data
            puts ""
        end
    end

    def looping
        puts "Thank you so much for using my program"
        sleep(4)
        puts "It's a honor to help someone find games on such a great system"
        sleep(5)
        puts "Please make a selection:"
        sleep(1)
        puts "Press 1 to view Switch games with a score of ninety or Higher"
        sleep(1)
        puts "Press 2 to view Switch Games with a score between 87 and 89"
        sleep(1)
        puts "Press 3 to Terminate the Program"
        sleep(1)
        puts "Please Press 1,2 or 3 now."
        input gets.chomp

        if input = "1"
            self.ninety
            puts "Enter a number 1-23 to explore this game"
            selection = gets.chomp
            select_to_index = selection.to_i - 1
            Game.ninety[select_to_index].print_game_data
            puts "If you would like more detailed information about the game please press 1 otherwise press 2 to exit"
            detailed_selection = gets.chomp
                if detailed_selection = "1"
                    game.print_details
                else
                    "Thank you returning to the program"
                    sleep(3)
                end
            self.looping


        elsif input = "2"
            self.eightys
            puts "Enter a number 1-41 to explore this game"
            selection = gets.chomp
            select_to_index = selection.to_i - 1
            Game.ninety[select_to_index].print_game_data
            puts "If you would like more detailed information about the game please press 1 otherwise press 2 to exit"
            detailed_selection = gets.chomp
                if detailed_selection = "1"
                    game.print_details
                else
                    "Thank you returning to the program"
                    sleep(3)
                end
            self.looping

        elsif input = "3"
            puts "Thank you for Using Shiki's Switch Games sorter"

        else 
            puts "Invalid Selection please try again"
        end
    end

    def print_details
        checker
        puts "_________________________________"
        sleep (1)
        puts "Average_Score: #{@score}"
        sleep (1)
        puts "========================================="
        puts "What is this game about: #{@about}"
        sleep (1)
        puts "========================================="
        puts "Developer: #{@developer}"
        sleep (1)
        puts "========================================="
        sleep (1)
        puts "Genre: #{@genre}"
        sleep (1)
        puts "=============================================="
        puts "Online Status: #{@online}"
        sleep (1)
        puts "=============================================="
        puts "ESRB rating: #{@esrb}"
        puts"==============================================="
        puts "Where do I buy this game?: #{@purchase}"
        puts " "
        puts @game
    end

    def checker
        if @game === nil
            Scrapr.follow_up_scan(@more_info)
            @game = 
            @developer = 
            @genre = 
            @online =
            @esrb = 
            @purchase = 
        end
    end
end




