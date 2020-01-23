class Deck
  RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]

  attr_accessor :cards

  def initialize
    @cards = Array.new()
    SUITS.each { |suit|
      RANKS.each { |rank|
        @cards.push(Card.new(suit, rank))
      }
    }
    @cards.shuffle!
  end

  def choose_card
    @cards.pop
  end
end

class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
