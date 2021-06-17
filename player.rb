class Player
  attr_accessor :hand, :name, :total

  def initialize name
    @name = name
    @hand = []
    @total = 0
    @type = 'player'
  end

  def accept_card (card)
    @hand << card
    @total += card.value
  end

  def return_hand
    hand = @hand
    reset
    return hand
  end

  def reset
    @hand = []
    @total = 0
  end
end
