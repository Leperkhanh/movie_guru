class Movie
    attr_accessor :title, :id, :genre_ids, :vote_average, :overview, :release_date
    @@all = []

    def initialize(attributes)
        attributes.each do |k, v| 
            self.send(("#{k}="), v) if self.respond_to?(("#{k}="))
        end
        save    
    end

    def self.all
        @@all
    end

    def save 
        @@all << self
    end

    def self.find_by_name(name)
        self.all.select do |title|
            Movie.name == title
        end
    end
end



