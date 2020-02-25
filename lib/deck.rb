# frozen_string_literal: true

# deck.rb

require_relative "card"

class Deck
attr_reader :cards
  def initialize
    @cards = []
    %i[hearts spades clubs diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end
  end

  def draw
    # returns a card
    if @cards.count == 0
      raise ArgumentError
    end
    return @cards.pop 
  end

  def shuffle
    if @cards.count == 0
      raise ArgumentError
    end
    return @cards.shuffle!
  end

  def count
    return @cards.count
  end

  def cut
    shuffle 
    return @cards.slice(0,cards.length/2)
  end
end 