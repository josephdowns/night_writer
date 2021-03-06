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

    it "finds the # of characters" do
      incoming_text = @night_reader.read(@file1)
      expect(@night_reader.characters(incoming_text)).to eq(74)
    end

    it "defines the incoming_text" do
      expect(@night_reader.incoming_text).to eq(@night_reader.read(@file1))
    end

    it "prints to the terminal" do
      expect{@night_reader.print_statement}.to output("Created './spec/test_folder/new_eng_mess.txt' conataining 74 characters\n").to_stdout
    end

    it "writes a new file" do
      expect(@night_reader.write_file(@file2)).to be_a(Integer)
    end

    it "creates a new file" do
      @night_reader.run
      expect('./spec/test_folder/new_eng_mess.txt').to be_a(String)
    end

  end
end
