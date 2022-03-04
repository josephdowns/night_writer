require './lib/writer'
require 'rspec'
require 'pry'

describe Writer do
  before (:each) do
    ARGV[0] = './spec/test_folder/test_mes.txt'
    ARGV[1] = './spec/test_folder/new_test_mes.txt'
    @night_writer = Writer.new
  end

  it "is a class" do
    expect(@night_writer).to be_a(Writer)
  end

  it "opens a file" do
    coolio = @night_writer.open_file_one
    expect(coolio).to be_a(File)
  end

  it "reads a file" do
    coolio = @night_writer.open_file_one
    incoming_text = @night_writer.read(coolio)
    expect(incoming_text).to be_a(String)
  end
end
