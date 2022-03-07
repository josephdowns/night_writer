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
  end
end
