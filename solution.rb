require 'pry'

class Card
  attr_accessor :suit, :rank
  @@all = []

  def initialize(suit,rank)
    @suit = suit
    @rank = rank
    self.class.all << self
  end

  def self.all
    @@all
  end

  def assign_suit(suit)
    self.suit = suit
    self
  end
end

class Deck
  attr_accessor :cards
  def initialize
    ranks = []
    ranks << Card.new("","A")
    ranks << Card.new("","2")
    ranks << Card.new("","3")
    ranks << Card.new("","4")
    ranks << Card.new("","5")
    ranks << Card.new("","6")
    ranks << Card.new("","7")
    ranks << Card.new("","8")
    ranks << Card.new("","9")
    ranks << Card.new("","10")
    ranks << Card.new("","J")
    ranks << Card.new("","Q")
    ranks << Card.new("","K")
    @cards = []
    @cards << ranks.map {|card| card.assign_suit("Hearts")}
    @cards << ranks.map {|card| card.assign_suit("Clubs")}
    @cards << ranks.map {|card| card.assign_suit("Diamonds")}
    @cards << ranks.map {|card| card.assign_suit("Spades")}
    @cards = @cards.flatten
    @cards
  end
  def choose_card
    self.cards.delete_at(rand(1..52))
  end
end
