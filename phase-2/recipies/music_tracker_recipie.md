# Class Design Recipe

## 1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface
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

## 3. Create Examples as Tests
Musictracker.new => creates new tracker and array
list.addtrack("song") => @list = ["song"]
list.listtrack => "song"


## 4. Implement the Behaviour
