# Andros Coding Challenge
This app is a cli app that simulates a basic blackjack-like card game.
Rules listed below.



## Requirements:
- Rules
  - There is 1 dealer
  - There are 5 players
  - There is 1 standard 52 card deck (no jokers)
  - Deal 2 cards per player in a round robin manner
  - Between hands, all cards return to the deck, which must be then shuffled
  - It is players vs dealer
  - The highest hand wins
  - The winner is announced at the end of each hand

- Technical Requirements:
  - Ruby Version: 3.0.1 (But other versions should work fine)
  - Gems: 
    - Bundler (If wanting to install and run debugging)

##### Note: Cards are given standard Blackjack values.

## How To Run

This app can be run with: 
> ruby run.rb

This app runs one game round at a time.  
Unless the "rounds" param is given, only one round will be run.
To run multiple rounds at a time:
> ruby run.rb [rounds]

To run with debugging, install gems with `bundle install` and run the app with:
> bundle exec ruby run.rb [rounds]
