require 'pry'
require './english_dictionary'
require './manageable'

class Reader < EnglishDictionary
  include Manageable

  def initialize
    @english_dictionary = EnglishDictionary.new
    @incoming_text = incoming_text
    @english_text = nil
  end

  def run
    file = open_file_one
    read = read(file)
    file2 = open_file_two
    english_text
    write_file(file2)
    print_statement
  end

  def write_file(file)
    file.write(@english_text)
  end

  def characters(incoming_text)
    (@incoming_text.strip.length) / 6
  end

  def english_text
    @english_text = @english_dictionary.put_english(@incoming_text)
  end

end
