require 'pry'
class EnglishDictionary
  attr_reader :english_dictionary

  def initialize
    @english_dictionary = {["O", ".", ".", ".", ".", "."] => "a"}
  end

end
