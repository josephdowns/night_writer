class Writer

  def run
    file = open_file_one
    read = read(file)
    # close(file)
    file2 = open_file_two
    write_file(file2)
    # close(file2)
    print_statement
  end

  def open_file_one
    File.open(ARGV[0], "r")
  end

  def read(file)
    file.read
  end

  # def close(file)
  #   file.close
  # end

  def open_file_two
    File.open(ARGV[1], "w")
  end

  def write_file(file)
    file.write
  end

  def characters(text)
    text.length
    # File.read(ARGV[0]).length
  end

  def print_statement
    puts "Created #{ARGV[1]} conataining #{characters} characters"
  end

  def incoming_text
  end

end
