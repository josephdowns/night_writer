class Dictionary
  attr_reader :top_line, :middle_line, :bottom_line

  def initialize
    @top_line   = {"a" => "O.", "b" => "O.", "c" => "OO", "d" => "OO",
                 "e" => "O.", "f" => "OO", "g" => "OO", "h" => "O.",
                 "i" => ".O", "j" => ".O", "k" => "O.", "l" => "O.",
                 "m" => "OO", "n" => "OO", "o" => "O.", "p" => "OO",
                 "q" => "OO", "r" => "O.", "s" => ".O", "t" => ".O",
                 "u" => "O.", "v" => "O.", "w" => ".O", "x" => "OO",
                 "y" => "OO", "z" => "O.", " " => ".."}
    @middle_line = {"a" => "..", "b" => "O.", "c" => "..", "d" => ".O",
                 "e" => ".O", "f" => "O.", "g" => "OO", "h" => "OO",
                 "i" => "O.", "j" => "OO", "k" => "..", "l" => "O.",
                 "m" => "..", "n" => ".O", "o" => ".O", "p" => "O.",
                 "q" => "OO", "r" => "OO", "s" => "O.", "t" => "OO",
                 "u" => "..", "v" => "O.", "w" => "OO", "x" => "..",
                 "y" => ".O", "z" => ".O", " " => ".."}
    @bottom_line = {"a" => "..", "b" => "..", "c" => "..", "d" => "..",
                 "e" => "..", "f" => "..", "g" => "..", "h" => "..",
                 "i" => "..", "j" => "..", "k" => "O.", "l" => "O.",
                 "m" => "O.", "n" => "O.", "o" => "O.", "p" => "O.",
                 "q" => "O.", "r" => "O.", "s" => "O.", "t" => "O.",
                 "u" => "OO", "v" => "OO", "w" => ".O", "x" => "OO",
                 "y" => "OO", "z" => "OO", " " => ".."}
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

  def put_braille(text)
    word_count = text.strip.length
    top_line_count = 0
    array = []
    array_count = 0

    word_count.times do
      array << text[array_count]
      array_count += 1
    end

    top_line = array.map do |letter|
      braille_top(letter)
    end

    middle_line = array.map do |letter|
      braille_middle(letter)
    end

    bottom_line = array.map do |letter|
      braille_bottom(letter)
    end
    # binding.pry
    braille = "#{top_line.join}\n#{middle_line.join}\n#{bottom_line.join}"
    return braille

  end

end
