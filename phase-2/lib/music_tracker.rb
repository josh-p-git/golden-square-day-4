class Musictracker
    def initialize
        @list = []
    end

    def addtrack(song)
        @list << song
    end
    
    def listtrack
        return @list
    end
end