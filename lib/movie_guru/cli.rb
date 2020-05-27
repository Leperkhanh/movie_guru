class CLI
    def start
        system("clear")
        greeting
        Api.fetch_top_movies
        choose_option
        
    end

    def greeting
        puts "Welcome to Movie-Guru"
        puts "Which information would you like to know?"
        puts 'Top Rated Movies'
        puts "Most popular movies"
        puts "Trending movies"
        puts "Search movies"
    end

    def choose_option
        input = gets.strip.downcase
        case input
        when "1"

        when "2"
            puts "in series"
        when "3"
            puts "Goodbye!"
        else           
            puts "Invaild"
            greeting
            choose_option
        end
    end
 
end

