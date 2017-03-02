require_relative "card"
require_relative "deck"
require_relative "hand"

class Blackjack

  def initialize(deck)
    @deck = deck
    @player = Hand.new(@deck.deal(2))
    @dealer = Hand.new(@deck.deal(2))
  end

  def start
    puts "\nWelcome to Blackjack!\n\n"
    show_hand("Player", @player.cards)
    show_score("Player", @player.score)
    show_hand("Dealer", @dealer.cards)
    show_score("Dealer", @dealer.score)
    update_turn("Player", @player)
    if @player.score > 21
      end_game
    else
      update_turn("Dealer", @dealer)
    end
  end

  def show_hand(person, cards)
    cards.each do |card|
      puts "#{person} was dealt #{card.face}"
    end
  end

  def show_score(person, score)
    puts "#{person}: #{score}\n\n"
  end

  def update_turn(person, hand)
    if hand.score >= 21
    else
      if person == "Player"
        print "Hit or stand (H/S): "
        move = STDIN.gets.chomp
        if move == "s"
        elsif move == "h"
          new_card = @deck.deal(1)
          hand.cards << new_card[0]
          show_hand(person, new_card)
          show_score(person, hand.score)
          update_turn(person, hand)
        else
          update_turn(person, hand)
        end
      else
        while hand.score < 17
          new_card = @deck.deal(1)
          hand.cards << new_card[0]
          show_hand(person, new_card)
          show_score(person, hand.score)
        end
      end
    end
  end

  def end_game
    if @player.score > 21
      puts "Busted! Dealer wins"
    elsif @dealer.score > 21 && @player.score < 21
      puts "Busted! Player wins"
    elsif @player.score != 21 && @dealer.score == 21
      puts "Dealer wins!"
    elsif @player.score == 21 && @dealer.score == 21
      puts "Tie! There is no winner."
    elsif @player.score == 21 && @dealer.score != 21
      puts "You win! Congratulation"
    elsif @player.score > @dealer.score
      puts "Player wins! Congratulation"
    elsif @dealer.score > @player.score
      puts "Dealer wins!"
    else
      puts "#{@dealer.score} #{@player.score}"
    end
  end

end

new_game = Blackjack.new(Deck.new)
new_game.start
new_game.end_game
# require "pry"
# binding.pry

# Welcome to Blackjack!
#
# Player was dealt 10♦
# Player was dealt A♣
# Player score: 21
#
# Hit or stand (H/S): s
#
# Player score: 21
#
#
# Dealer was dealt Q♠
# Dealer was dealt 8♥
# Dealer score: 18
#
# Dealer stands.
#
# You win!
