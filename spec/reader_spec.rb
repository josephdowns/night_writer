require 'pry'
require 'rspec'
require './lib/reader'

describe Reader do
  context "first steps" do
    before (:each) do
      @reader = Reader.new
      ARGV[0] = '.spec/test_folder/test_braille.txt'
      ARGV[1] = '.spec/test_folder/new_eng_mess.txt'
      @file1 = @reader.open_file_one
      @file2 = @reader.open_file_two
    end

    it "is a class" do
      expect(@reader).to be_a(Reader)
    end

    it "opens a file" do
      expect(@file1).to be_a(File)
    end

    it "opens a second file" do
      expect(@file2).to be_a(File)
  end
end
