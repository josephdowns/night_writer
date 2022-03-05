require './lib/writer'
require 'rspec'
require 'pry'

describe Writer do
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

  xit "closes a file" do
    open_file = @night_writer.open_file_one
    # binding.pry
    bey = @night_writer.close(@open_file)
    expect(bey).to be(nil)
  end

  it "opens a second file" do
    expect(@open_file2).to be_a(File)
  end

  it "finds the # of characters" do
    incoming_text = @night_writer.read(@open_file)
    expect(@night_writer.characters(incoming_text)).to eq(49)
  end
end
