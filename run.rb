require 'pry-byebug'

require_relative 'deck'
require_relative 'dealer'
require_relative 'player'

# Initialize Dealer, Deck, and Players
dealer = Dealer.new
deck = Deck.new
players = [
  (Player.new "Player1"),
  (Player.new "Player2"),
  (Player.new "Player3"),
  (Player.new "Player4"),
  (Player.new "Player5"),
]
rounds = ARGV[0] ? ARGV[0].to_i : 1

rounds.times do
  puts "##### Game Start! #####"
  # Deal 2 Cards To Each Player
  puts "Dealing Cards!"
  2.times { dealer.deal(deck, players) }

  # Declare Winners
  players.each do |player|
    if player.total > dealer.total
      puts "#{player.name} defeats Dealer! (#{player.total} > #{dealer.total})"
    elsif player.total == dealer.total
      puts "#{player.name} ties Dealer! (#{player.total} = #{dealer.total})"
    else
      puts "Dealer defeats #{player.name}! (#{dealer.total} > #{player.total})"
    end
  end

  # Return Hands And Shuffle The Deck
  dealer.gather_hands(deck, players)
  deck.shuffle 
  puts ""
end
