require 'my_helper'
class Player
  def name
    "Eve's Guesser"
  end

  def take_turn(state, guesses)
    # MyHelper.answer
    vowels = ["e", "a", "i", "o", "u", "y"]
    consonants =  ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x"]
    current_vowel = (guesses.size > vowels.size) ? (guesses - vowels).sample : (vowels - guesses).sample
    current_consonant = (guesses.size > consonants.size) ? (guesses - consonants).sample : (consonants - guesses).sample
    return [current_vowel, current_consonant].sample 
  end
end
