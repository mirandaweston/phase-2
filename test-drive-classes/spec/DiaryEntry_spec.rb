require 'DiaryEntry'

RSpec.describe DiaryEntry do
    it "constructs" do
        @diary_entry = DiaryEntry.new("title", "contents")
        expect(@diary_entry.title).to eq "title"
        expect(@diary_entry.contents).to eq "contents"
    end

    it "returns the number of words in the contents as an integer" do
        @diary_entry = DiaryEntry.new("title", "contents")
        expect(@diary_entry.count_words).to eq 1
    end

    it "returns an estimate of the reading time for the contents as an integer" do
        @diary_entry = DiaryEntry.new("title", "contents")
        expect(@diary_entry.reading_time(200)).to eq 1
    end

    it "returns a string with a chunk of the contents the user could read in the given number of mins" do
        @diary_entry = DiaryEntry.new("title", "Lorem Ipsum is simply dummy text of the printing and typesetting industry")
        expect(@diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
        expect(@diary_entry.reading_chunk(2,2)).to eq "dummy text of the"
        expect(@diary_entry.reading_chunk(2,2)).to eq "printing and typesetting industry"
        expect(@diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
    end   
end