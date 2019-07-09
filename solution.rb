require 'pry'
class Deck
  attr_reader :cards
  def initialize
    @cards = []
  
    ["Hearts", "Clubs", "Diamonds", "Spades"].each do |suit|
      ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    
  end
  
  def choose_card
    choose_card = @cards.sample
    @cards.delete(choose_card)
  end
end

class Card
  attr_reader :rank, :suit
  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end