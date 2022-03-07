require 'rspec'
require 'pry'
require './lib/dictionary'

describe Dictionary do
  context "first steps" do
    before (:each) do
      @dictionary = Dictionary.new
    end

    it "to be a class" do
      expect(@dictionary).to be_a(Dictionary)
    end

    it "looks at the top line" do
      letter = "a"
      expect(@dictionary.braille_top(letter)).to eq("O.")
    end

    it "looks at the middle line" do
      letter = "a"
      expect(@dictionary.braille_middle(letter)).to eq("..")
    end

    it "looks at the bottom line" do
      letter = "a"
      expect(@dictionary.braille_bottom(letter)).to eq("..")
    end

    it "puts it all together" do
      text = "an apple a day"
      expect(@dictionary.put_braille(text)).to eq(
        "O.OO..O.OOOOO.O...O...OOO.OO\n...O....O.O.O..O.......O...O\n..O.....O.O.O.............OO\n"
      )
    end
  end
end
