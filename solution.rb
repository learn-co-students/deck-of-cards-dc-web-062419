class Deck
  attr_reader :cards

  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  def initialize
    @cards = []
    @@suit.each do |suit|
      @@rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    @cards.delete(@cards.sample)
  end
end

class Card
    attr_reader :rank, :suit
  
    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end
  end
