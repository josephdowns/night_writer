module Manageable

  def open_file_one
    File.open(ARGV[0], "r")
  end

  def open_file_two
    File.open(ARGV[1], "w")
  end

  def read(file)
    file.read
  end

  def characters(incoming_text)
    @incoming_text.strip.length
  end

  def print_statement
    puts "Created '#{ARGV[1]}' conataining #{characters(incoming_text)} characters"
  end

  def incoming_text
    @incoming_text = File.read(ARGV[0])
  end

end
