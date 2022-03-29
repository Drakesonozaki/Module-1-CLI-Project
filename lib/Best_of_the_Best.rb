#uscore
class Best_of_the_Best
    @@all = []
    @@ninety = []
    @@eightys = []

    attr_accessor :number, :name

    def intialize
        @number = number
        @name = name 
        @@all << self
    end

    def self.score_spliter 
        rank = @@all.sort_by{|score| |score.number|}
        rank.each do |score|
            if score.number >= 87 && <= 89
                @@eightys << score
            if score.number >= 90
                @@ninety
            end
        end
    end

    def title
        Top_Switch_Games.all.select {|title| game.score == self}
    end

    def self.all
        @@all
    end

    def self.eightys
        @@eightys
    end

    def self.ninety
        @@ninety
    end
end
