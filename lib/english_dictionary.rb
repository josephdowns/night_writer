require 'pry'
class EnglishDictionary
  attr_reader :english_dictionary

  def initialize
    @english_dictionary = {"O....." => "a", "O.O..." => "b", "OO...." => "c",
                           "OO.O.." => "d", "O..O.." => "e", "OOO..." => "f",
                           "OOOO.." => "g", "O.OO.." => "h", ".OO..." => "i",
                           ".OOO.." => "j", "O...O." => "k", "O.O.O." => "l",
                           "OO..O." => "m", "OO.OO." => "n", "O..OO." => "o",
                           "OOO.O." => "p", "OOOOO." => "q", "O.OOO." => "r",
                           ".OO.O." => "s", ".OOOO." => "t", "O...OO" => "u",
                           "O.O.OO" => "v", ".OOO.O" => "w", "OO..OO" => "x",
                           "OO.OOO" => "y", "O..OOO" => "z", "......" => " "}
  end

  def put_english(text)
    x = text.split("\n")
    lines = x.count / 3
    line_index = 0
    top = []
    middle = []
    bottom = []
    combo = []
    characters = (text.strip.length / 6)
    letters = []
    letters_index = 0
    index = -1
    a = 0
    message = []

    lines.times do
      top << x[line_index]
      middle << x[line_index + 1]
      bottom << x[line_index + 2]
      line_index += 3
    end

    x = [top, middle, bottom]

    x = x.map { |line| line.join}

    characters.times do
      letters << []
    end

    characters.times do
      index += 1
      count = 0
      x.each do |line|
        letters[index] << line[a..a+1]
        count += 1
        if count == 3
          break
        end
      end
      a += 2
    end

    characters.times do
      message << @english_dictionary[letters[letters_index].join]
      letters_index += 1
    end


    return message.join


  end

end
