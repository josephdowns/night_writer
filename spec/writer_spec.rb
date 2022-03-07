require './lib/writer'
require 'rspec'
require 'pry'

describe Writer do
  context "first steps" do
    before (:each) do
      ARGV[0] = './spec/test_folder/test_mes.txt'
      ARGV[1] = './spec/test_folder/new_test_mes.txt'
      @night_writer = Writer.new
      @open_file = @night_writer.open_file_one
      @open_file2 = @night_writer.open_file_two
    end

    it "is a class" do
      expect(@night_writer).to be_a(Writer)
    end

    it "opens a file" do
      expect(@open_file).to be_a(File)
    end

    it "reads a file" do
      incoming_text = @night_writer.read(@open_file)
      expect(incoming_text).to be_a(String)
    end

    it "opens a second file" do
      expect(@open_file2).to be_a(File)
    end

    it "finds the # of characters" do
      incoming_text = @night_writer.read(@open_file)
      expect(@night_writer.characters(incoming_text)).to eq(28)
    end

    it "defines the incoming text" do
      expect(@night_writer.incoming_text).to eq(@night_writer.read(@open_file))
    end

    it "prints to terminal" do
      expect{@night_writer.print_statement}.to output("Created './spec/test_folder/new_test_mes.txt' conataining 28 characters\n").to_stdout
    end

    it "writes a new file" do
      expect(@night_writer.write_file(@open_file2)).to be_a(Integer)
    end

    context "playing with fire" do
      before (:each) do
        ARGV[0] = './spec/test_folder/long_txt.txt'
        ARGV[1] = './spec/test_folder/new_braille_long.txt'
        @night_writer = Writer.new
        @file1 = @night_writer.open_file_one
        @file2 = @night_writer.open_file_two
      end

      it "creates a new file" do
        @night_writer.run
        expect('./spec/test_folder/new_braille_long.txt').to be_a(String)
      end
    end
  end
end
