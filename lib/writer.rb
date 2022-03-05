require 'pry'
require './dictionary'

class Writer < Dictionary

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

  def open_file_one
    File.open(ARGV[0], "r")
  end

  def read(file)
    file.read
  end

  def open_file_two
    File.open(ARGV[1], "w")
  end

  def write_file(file)
    file.write(@braille_text)
  end

  def characters(incoming_text)
    @incoming_text.length
  end

  def print_statement
    puts "Created '#{ARGV[1]}' conataining #{characters(incoming_text)} characters"
  end

  def incoming_text
    @incoming_text = File.read(ARGV[0])
  end

  def braille_text
    @braille_text = @dictionary.put_braille(@incoming_text)
  end

end
