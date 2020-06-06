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

    def self.destroy_all
        @@all.clear
    end
  
end