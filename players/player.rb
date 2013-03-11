require 'my_helper'
class Player
  def name
    "Eve's Guesser"
  end

  def take_turn(state, guesses)
    # MyHelper.answer
    vowels = ["e", "a", "i", "o", "u", "y"]
    consonants =  ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x"]
    possible_vowels = vowels - guesses
    possible_consonants = consonants - guesses
    
    vowel = possible_vowels.sample unless possible_vowels.empty?
    consonant = possible_consonants.sample unless possible_consonants.empty?
    
    return vowel || consonant
  end
end
