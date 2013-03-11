require 'my_helper'
class Player
  def name
    "Eve's Guesser"
  end

  def take_turn(state, guesses)
    # MyHelper.answer
    most_frequent = ["e", "t", "a", "o", "i", "n"]
    less_frequent =  ["s", "h", "r", "d", "l", "c", "u", "m", "w", "f", "g", "y", "p", "b", "v", "k", "j", "x", "q", "z"]
    possible_freq = most_frequent - guesses
    possible_less_freq = less_frequent - guesses
    
    frequent = possible_freq.shift unless possible_freq.empty?
    less_frequent = possible_less_freq.sample unless possible_less_freq.empty?
    
    return frequent || less_frequent
  end
end