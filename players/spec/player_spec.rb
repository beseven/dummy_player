require File.dirname(__FILE__) + "/spec_helper"

describe "Player" do

  describe ".take_turn" do
    let (:vowels) { ["e", "a", "i", "o", "u"] }
    let (:constants) { ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x"] }
    subject { lambda { |guesses| Player.take_turn(state, guesses) } }
  end
end