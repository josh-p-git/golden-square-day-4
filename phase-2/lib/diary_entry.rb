class DiaryEntry
    def initialize(title, contents) 
        @title = title
        @contents = contents
        @end_point = 0
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def count_words
        @contents.split(" ").length
    end

    def reading_time(wpm)
        return @contents.split(" ").length / wpm
    end

    def reading_chunk(wpm, minutes)
        @contents[0..@end_point] 
        @end_point = wpm / minutes
    end
end

diary = DiaryEntry.new("journal", "rsf sdf sdf")

p diary.reading_time(100)