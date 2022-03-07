require 'pry'
class EnglishDictionary
  attr_reader :english_dictionary

  def initialize
    @english_dictionary = {["O", ".", ".", ".", ".", "."] => "a"}
  end

  def put_english(text)
    word_count = text.strip.length
    array = []
    array_count = 0

    word_count.times do
      array << text[array_count]
      array_count += 1
    end

    array.delete("\n")
    # binding.pry

    english = @english_dictionary[array]
  end

end
