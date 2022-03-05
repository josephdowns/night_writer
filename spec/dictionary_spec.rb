require 'rspec'
require 'pry'
require './lib/dictionary'

describe Dictionary do
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
    letter = "a"
    expect(@dictionary.put_braille(letter).length).to eq(8)
  end
end
