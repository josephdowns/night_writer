require 'pry'

class Reader

  def initialize
    # @incoming_text = incoming_text
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

  def open_file_one
    File.open(ARGV[0], "r")
  end


end
