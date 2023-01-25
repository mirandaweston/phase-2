class Track
    def initialize(title, artist) #title and artist are strings
        @title = title
        @artist = artist
    end

    def matches?(keyword) #keyword is a string which returns true if the keyword matches the title or artist
        if keyword.include?(@title) || keyword.include?(@artist)
            return true
        else
            return false
        end
    end
end