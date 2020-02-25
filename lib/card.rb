# frozen_string_literal: true

# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if !(1..13).include? value
      raise ArgumentError
    else
      @value = value
    end
    if !%i[hearts spades clubs diamonds].include? suit
      raise ArgumentError
    else
      @suit = suit
    end
  end

  def to_s
    if value == 1
      "Ace of #{suit}"
    elsif value == 11
      "Jack of #{suit}"
    elsif value == 12
      "Queen of #{suit}"
    elsif value == 13
      "King of #{suit}"
    else
      "#{value} of #{suit}"
    end
  end
end
