class Deck
attr_accessor :cards
  def initialize
    @cards = []
    suits = ['hearts', 'spades', 'diamonds', 'clubs']
    (1..13).each do |rank|
      suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def PrintDeck
    @cards.each do |card|
      if (card.suit == 'hearts') || (card.suit == 'diamonds')
      puts card.rank, card.suit
      else
      puts card.rank, card.suit
      end
    end
  end
end


#end
class Card
attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

deck = Deck.new
deck.PrintDeck

