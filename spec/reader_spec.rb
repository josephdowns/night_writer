require 'pry'
require 'rspec'
require './lib/reader'

describe Reader do
  context "first steps" do
    before (:each) do
      @night_reader = Reader.new
      ARGV[0] = './spec/test_folder/test_braille.txt'
      ARGV[1] = './spec/test_folder/new_eng_mess.txt'
      @file1 = @night_reader.open_file_one
      @file2 = @night_reader.open_file_two
    end

    it "is a class" do
      expect(@night_reader).to be_a(Reader)
    end

    it "opens a file" do
      expect(@file1).to be_a(File)
    end

    it "opens a second file" do
      expect(@file2).to be_a(File)
    end

    it "reads a file" do
      incoming_text = @night_reader.read(@file1)
      expect(incoming_text).to be_a(String)
    end
  end
end
