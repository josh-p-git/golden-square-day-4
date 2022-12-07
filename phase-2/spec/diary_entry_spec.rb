require 'diary_entry'
 describe "Diary entry class" do
    it "It initialises with the correct title and contents" do
        diary_entry = DiaryEntry.new("My journal", "secret")
        expect(diary_entry.instance_variable_get(:@title)).to eq "My journal"
        expect(diary_entry.instance_variable_get(:@contents)).to eq "secret"
    end

    it "It returns the title" do
        diary_entry = DiaryEntry.new("My journal", "secret")
        expect(diary_entry.title).to eq "My journal"
    end

    it "returns the contents" do
        diary_entry = DiaryEntry.new("My journal", "secret")
        expect(diary_entry.contents).to eq "secret"
    end
    
    it "returns the number of words in the contents" do
        diary_entry = DiaryEntry.new("My journal", "super secret words")
        expect(diary_entry.count_words).to eq 3
    end

    it "returns the number of words in the contents" do
        diary_entry = DiaryEntry.new("My journal", "super secret words")
        expect(diary_entry.count_words).to eq 3
    end

    it "reading_time returns an integer value" do
        diary_entry = DiaryEntry.new("My journal", "super secret words") 
        expect(diary_entry.reading_time(2).class).to eq Integer
    end

    it "returns an estimate of the reading time given their reading speed" do
        diary_entry = DiaryEntry.new("My journal", "super secret words")
        expect(diary_entry.reading_time(100)).to eq 3/100
    end
end