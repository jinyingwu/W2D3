require 'byebug'
require_relative 'card'
class Deck
  attr_reader :deck
 CARDS_HASH = {
   1 => Card.new(1),
   2 => Card.new(2),
   3 => Card.new(3)


 }
  def initialize
    @deck = []
    i = 1
    4.times {@deck << CARDS_HASH[1]}

  end
end
