require 'pry'
require 'rspec'
require './lib/reader'

describe Reader do
  context "first steps" do
    before (:each) do
      @reader = Reader.new
    end

    it "is a class" do
      expect(@reader).to be_a(Reader)
    end
  end
end
