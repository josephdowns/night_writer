require 'pry'
class EnglishDictionary
  attr_reader :english_dictionary

  def initialize
    @english_dictionary = {["O", ".", ".", ".", ".", "."] => "a",
                           ["O", ".", "O", ".", ".", "."] => "b",
                           ["O", "O", ".", ".", ".", "."] => "c"}
  end

  def put_english(text)
    word_count = text.strip.length
    word_count_counter = (word_count / 4).ceil
    array = []
    first_array = []
    second_array = []
    array_count = 0

    word_count.times do
      array << text[array_count]
      array_count += 1
    end

    array.delete("\n")

    if word_count_counter > 2
      word_count_counter.times do
        2.times do
          first_array << array.shift
        end

        2.times do
          second_array << array.shift
        end
      end
    end

    # binding.pry

    english = "#{@english_dictionary[array]}" + "#{@english_dictionary[first_array.compact]}" + "#{@english_dictionary[second_array.compact]}"
  end

end
