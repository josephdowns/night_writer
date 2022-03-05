class Dictionary
  attr_reader :top_line, :middle_line, :bottom_line

  def initialize
    @top_line = {"a" => "O."}
    @middle_line = {"a" => ".."}
    @bottom_line = bottom_line
  end

  def braille_top(letter)
    @top_line[letter]
  end

end
