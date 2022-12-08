require 'music_tracker'

describe "Musictracker class" do
    it "adds song to array when song given" do
        song = Musictracker.new
        expect(song.addtrack("song")).to eq ["song"]
    end
    it "adds a second song to array when song given" do
        song = Musictracker.new
        song.addtrack("song")
        expect(song.addtrack("another song")).to eq ["song", "another song"]
    end
    it "returns list of added songs when listtrack is used" do
        song = Musictracker.new
        song.addtrack("song")
        song.addtrack("another song")
        expect(song.listtrack).to eq ["song", "another song"]
    end
end