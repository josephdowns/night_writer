class Dictionary
  attr_reader :top_line, :middle_line, :bottom_line

  def initialize
    @top_line = top_line
    @middle_line = middle_line
    @bottom_line = bottom_line
  end

  def braille_top
    @top_line = blank
  end

end
