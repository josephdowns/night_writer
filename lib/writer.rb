require 'pry'
require './dictionary'
require './manageable'

class Writer < Dictionary
  include Manageable

  def initialize
    @dictionary = Dictionary.new
    @incoming_text = incoming_text
    @braille_text = nil
  end

  def run
    file = open_file_one
    read = read(file)
    file2 = open_file_two #creates new file
    braille_text
    write_file(file2)
    print_statement
  end

  def write_file(file)
    file.write(@braille_text)
  end

  def braille_text
    @braille_text = @dictionary.put_braille(@incoming_text)
  end

end
