class Dictionary
  attr_reader :top_line, :middle_line, :bottom_line

  def initialize
    @top_line = {"a": "O."}
    @middle_line = middle_line
    @bottom_line = bottom_line
  end

  def braille_top(letter_given)
    @top_line.map { |letter| letter[letter_given]}
  end

end
