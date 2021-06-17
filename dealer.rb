require_relative 'player'

class Dealer < Player

  attr_accessor :hand, :total

  def initialize
    @name = 'Dealer'
    @hand = []
    @total = 0
    @type = 'dealer'
  end

  def deal (deck, players)
    # Deal One Card To Each Player
    players.each do |player|
      player.accept_card(deck.top)
    end

    # Deal One Card To Self
    accept_card(deck.top)
  end

  def gather_hands (deck, players)
    # Return Player Hands
    players.each do |player|
      deck.accept_hand(player.return_hand)
    end
    
    # Return Dealer Hand
    deck.accept_hand(return_hand)
  end
end
