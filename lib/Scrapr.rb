require 'pry'
Class Scrapr
    def Initialize
        @base_url = "https://www.metacritic.com"
    end

    def scan
        raw = (open(@base_url + "/browse/games/score/metascore/all/switch/filtered", 'User-Agent' => 'Edg/96.0.1054.43' ))
        raw_segmented = Nokogiri::HTML(html)
        should_buy = raw_segmented.css('clamp-summary-wrap')

        #Now that we have the initial scrap we need to asign the various
        #parts of the HTML source.
        should_buy.each do |should_buy|
            title = should_buy.css('h3').text
            score = should_buy.css('.metascore_anchor')[0].text.strip.chomp
            about = should_buy.css('.summary')[0].text
            came_out = should_buy.css('.clamp-details span')[2].text
            rank_position = should_buy.css('.title.numbered span')[0].text.strip
            more_info = should_buy.css("a")[0].attr("href")

            rating = Rating.new(score, title)

            game = Game.new(rank_position, title, score, came_out?, about, more_info)

        end
    end

    def follow_up_scan(more_info)
        game_raw = open(@base_url + more_info, 'User-Agent' => 'Edg/96.0.1054.43')
        game_raw_segmented = Nokogiri::HTML(game_raw)

        the_details_potenz =  game_raw_segmented.css('summary_details').text

        developer = game_raw_segmented.css('summary_detail developer')[0][1].text
        binding.pry
        #first_genres = game_raw_segmented.css
        #online? = game_raw_segmented.css
        #buy_now = game_raw_segmented.css

        #where_to_buy = game_raw_segmented.css
    end
end