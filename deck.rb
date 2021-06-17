require_relative 'card'

class Deck

  def initialize
    @types = [*(2..10), 'Jack', 'Queen', 'King', 'Ace']
    @suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
    @cards = []

    @types.each do |type|
      #Set Values Using Blackjack Values
      if type.class == Integer
        value = type
      elsif type == 'Ace'
        value = 11
      else
        value = 10
      end

      #Create Deck
      @suits.each{ |suit|
        @cards << Card.new(type, suit, value)
      }
    end

    #Return Shuffled Deck
    @cards.shuffle!
  end

  def accept_hand (hand)
    @cards += hand
  end

  def shuffle
    @cards.shuffle!
  end

  def top
    @cards.shift
  end
end
