require "game"

RSpec.describe Game do 
  context "after adding some entries" do
    it "list out the entries added" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      diary_entry2 = DiaryEntry.new("my_title2", "my_contents2")
      diary.add(diary_entry)
      diary.add(diary_entry2)
      expect(diary.all).to eq [diary_entry, diary_entry2]
    end
  end