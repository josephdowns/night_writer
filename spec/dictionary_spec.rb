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
end
