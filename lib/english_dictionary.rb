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
                           "O.O.OO" => "v", ".OOO.O" => "w"


                          }
  end

  def put_english(text)
    x = text.split("\n")
    characters = (x[0].length / 2)
    letters = []
    letters_index = 0
    index = 0
    a = 0
    message = []

    characters.times do
      letters << []
    end

    characters.times do
      x.each do |line|
        letters[index] << line[a..a+1]
      end
      index += 1
      a += 2
    end

    characters.times do
      message << @english_dictionary[letters[letters_index].join]
      letters_index += 1
    end

    return message.join


  end

end
