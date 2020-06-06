class CLI
    def start
        system("clear")
        greeting
        list_options
        choose_option
    end

    def greeting
        puts "Welcome to Movie-Guru"
    end

    def list_options
        puts "Which information would you like to know?"
        puts <<-DOC.gsub /^\s*/, ''
        1. Top Rated Movies
        2. Most popular movies
        3. Trending movies
        4. Search movies
        5. Exit
        DOC
        choose_option
    end

    def choose_option
        input = gets.strip.downcase
        case input
        when "1"
            rated_option
        when "2"
            popular_option
        when "3"
            trending_option
        when "4"
            search_option
        when "5"
            end_program            
        else           
            puts "Invaild"
            choose_option
        end
    end

    def end_program
        puts "Thank you for using Movie-Guru!"
        exit
    end


    def rated_option
        puts "Top rated movies:"
        Movie.destroy_all
        Api.fetch_top_movies
        display_movies
        input = gets.strip.downcase
        case input
        when "1"
            select_movie(input)
            list_options
        when "2"
            select_movie(input)
            list_options
        when "3"
            select_movie(input)
            list_options
        when "4"
            select_movie(input)
            list_options
        when "5"
            select_movie(input)
            list_options
        when "6"
            select_movie(input)
            list_options
        when "7"
            select_movie(input)
            list_options
        when "8"
            select_movie(input)
            list_options
        when "9"
            select_movie(input)
            list_options
        when "10"
            select_movie(input)
            list_options
        when "11"
            select_movie(input)
            list_options
        when "12"
            select_movie(input)
            list_options
        when "13"
            select_movie(input)
            list_options
        when "14"
            select_movie(input)
            list_options
        when "15"
            select_movie(input)
            list_options
        when "16"
            select_movie(input)
            list_options
        when "17"
            select_movie(input)
            list_options
        when "18"
            select_movie(input)
            list_options
        when "19"
            select_movie(input)
            list_options
        when "20"
            select_movie(input)
            list_options                                  
        else 
            puts "Invalid"
            rated_option
        end
    end

    def popular_option
        puts "Most popular movies:"
        Movie.destroy_all
        Api.fetch_popular
        display_movies
        input = gets.strip.downcase
        case input
        when "1"
            select_movie(input)
            list_options
        when "2"
            select_movie(input)
            list_options
        when "3"
            select_movie(input)
            list_options
        when "4"
            select_movie(input)
            list_options
        when "5"
            select_movie(input)
            list_options
        when "6"
            select_movie(input)
            list_options
        when "7"
            select_movie(input)
            list_options
        when "8"
            select_movie(input)
            list_options
        when "9"
            select_movie(input)
            list_options
        when "10"
            select_movie(input)
            list_options
        when "11"
            select_movie(input)
            list_options
        when "12"
            select_movie(input)
            list_options
        when "13"
            select_movie(input)
            list_options
        when "14"
            select_movie(input)
            list_options
        when "15"
            select_movie(input)
            list_options
        when "16"
            select_movie(input)
            list_options
        when "17"
            select_movie(input)
            list_options
        when "18"
            select_movie(input)
            list_options
        when "19"
            select_movie(input)
            list_options
        when "20"
            select_movie(input)
            list_options                                  
        else 
            puts "Invalid"
            popular_option
        end 
    end

    def trending_option
        puts "Trending movies:"
        Movie.destroy_all
        Api.fetch_trending
        display_movies
        input = gets.strip.downcase
        case input
        when "1"
        select_movie(input)
        list_options
        when "2"
        select_movie(input)
        list_options
        when "3"
        select_movie(input)
        list_options
        when "4"
        select_movie(input)
        list_options
        when "5"
        select_movie(input)
        list_options
        when "6"
        select_movie(input)
        list_options
        when "7"
        select_movie(input)
        list_options
        when "8"
        select_movie(input)
        list_options
        when "9"
        select_movie(input)
        list_options
        when "10"
        select_movie(input)
        list_options
        when "11"
        select_movie(input)
        list_options
        when "12"
        select_movie(input)
        list_options
        when "13"
        select_movie(input)
        list_options
        when "14"
        select_movie(input)
        list_options
        when "15"
        select_movie(input)
        list_options
        when "16"
        select_movie(input)
        list_options
        when "17"
        select_movie(input)
        list_options
        when "18"
        select_movie(input)
        list_options
        when "19"
        select_movie(input)
        list_options
        when "20"
        select_movie(input)
        list_options                                  
        else 
        puts "Invalid"
        trending_option
        end      
    end

    def search_option
        puts "Search results"
        Movie.destroy_all
        puts "What's the name of the movie you are trying to find?"
            search = gets.strip.downcase
            Api.search_method(search)
            display_movies    
        input = gets.strip.downcase
        case input
        when "1"
        select_movie(input)
        list_options
        when "2"
        select_movie(input)
        list_options
        when "3"
        select_movie(input)
        list_options
        when "4"
        select_movie(input)
        list_options
        when "5"
        select_movie(input)
        list_options
        when "6"
        select_movie(input)
        list_options
        when "7"
        select_movie(input)
        list_options
        when "8"
        select_movie(input)
        list_options
        when "9"
        select_movie(input)
        list_options
        when "10"
        select_movie(input)
        list_options
        when "11"
        select_movie(input)
        list_options
        when "12"
        select_movie(input)
        list_options
        when "13"
        select_movie(input)
        list_options
        when "14"
        select_movie(input)
        list_options
        when "15"
        select_movie(input)
        list_options
        when "16"
        select_movie(input)
        list_options
        when "17"
        select_movie(input)
        list_options
        when "18"
        select_movie(input)
        list_options
        when "19"
        select_movie(input)
        list_options
        when "20"
        select_movie(input)
        list_options                                  
        else 
        puts "Invalid"
        search_option
        end         
    end

    def display_movies
        Movie.all.each_with_index do |movie, index|
            puts "#{index + 1}. #{movie.title}"
        end
        puts "Which movie do you want more information?"
    end 

    def select_movie(input)
        system("clear")
        selection = input.to_i - 1
        Movie.all.each_with_index do |movie, index|
            if selection == index
                puts "Title: #{movie.title}"
                puts "Rating: #{movie.vote_average}"
                puts "Release Date: #{movie.release_date}"
                puts "Summary:"
                puts "#{movie.overview}"     
        end
    end
    end

end

   


