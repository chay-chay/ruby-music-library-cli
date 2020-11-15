class Artist
    attr_accessor
    @@all = []
    def initialize(name)
        @name = name 
        save
    end
    
    def self.all
        @@all
    end

    def save
        @@all << self #self.class.all << self - Same thing
    end

    def self.create(name)
        artist = new(name)
        artist.save
        artist
    end
end