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
end