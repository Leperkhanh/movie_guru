class Api
    @key = ENV['api_key']

    def self.fetch_top_movies
        url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{@key}&language=en-US&page=1&region=us"
        response = RestClient.get(url)
        films = JSON.parse(response.body)["results"]
        
        films.each do |attributes|
            Movie.new(attributes)
        end    
            
    end  

    def self.search_method(string)
        url = "https://api.themoviedb.org/3/search/movie?api_key=#{@key}&language=en-US&query="
        response = RestClient.get(url + string)
        films = JSON.parse(response.body)["results"]
        films.each do |attributes|
            Movie.new(attributes)

        end   
    end

    def self.fetch_popular
        url = "https://api.themoviedb.org/3/movie/popular?api_key=#{@key}&language=en-US"
        response = RestClient.get(url)
        films = JSON.parse(response.body)["results"]
        
        films.each do |attributes|
            Movie.new(attributes)
            
        end        
    end

    def self.fetch_trending
        url = "https://api.themoviedb.org/3/trending/movie/week?api_key=#{@key}"
        response = RestClient.get(url)
        films = JSON.parse(response.body)["results"]
        
        films.each do |attributes|
            Movie.new(attributes)
            
        end        
    end
    
end
