require './lib/english_dictionary'
require 'rspec'

describe EnglishDictionary do
  context "baby steps" do
    before (:each) do
      @dictionary = EnglishDictionary.new
    end

    it "is a class" do
      expect(@dictionary).to be_a(EnglishDictionary)
    end

    it "puts to alpha characters" do
      text = "O.\n..\n.."
      expect(@dictionary.put_english(text)).to eq("a")
    end

    it "gets a little more complicated" do
      text = "O.O.\n..O.\n...."
      expect(@dictionary.put_english(text)).to eq("ab")
    end

    it "gets even more complicated" do
      text = "O.O.OO\n..O...\n......\n"
      expect(@dictionary.put_english(text)).to eq("abc")
    end

    it "has a space" do
      text = "O...OO\n......\n......\n"
      expect(@dictionary.put_english(text)).to eq("a c")
    end
  end
end
