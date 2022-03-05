class Dictionary
  attr_reader :top_line, :middle_line, :bottom_line

  def initialize
    @top_line = {"a" => "O."}
    @middle_line = {"a" => ".."}
    @bottom_line = {"a" => ".."}
  end

  def braille_top(letter)
    @top_line[letter]
  end

  def braille_middle(letter)
    @middle_line[letter]
  end

  def braille_bottom(letter)
    @bottom_line[letter]
  end

  def put_braille(letter)
    puts braille_top(letter)
    puts braille_middle(letter)
    puts braille_bottom(letter)
  end

end
