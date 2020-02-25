# frozen_string_literal: true

require_relative "test_helper"

describe Card do
  describe "You can create a Card instance" do
    it "Can be created" do
      %i[hearts spades clubs diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect { Card.new(0, :diamonds) }.must_raise ArgumentError
      expect { Card.new(14, :diamonds) }.must_raise ArgumentError
      expect { Card.new(14, :clovers) }.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do
    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card = Card.new(2, :diamonds)
      result = card.to_s
      expect result.must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      ace = Card.new(1, :spades)
      jack = Card.new(11, :spades)
      queen = Card.new(12, :spades)
      king = Card.new(13, :spades)

      ace_result = ace.to_s
      expect(ace_result).must_equal "Ace of spades"

      jack_result = jack.to_s
      expect(jack_result).must_equal "Jack of spades"

      queen_result = queen.to_s
      expect(queen_result).must_equal "Queen of spades"

      king_result = king.to_s
      expect(king_result).must_equal "King of spades"
    end
  end

  describe "Reader methods" do
    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`

      card = Card.new(5, :diamonds)

      card_value = card.value

      expect(card_value).must_equal 5
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card = Card.new(5, :diamonds)

      card_suit = card.suit

      expect(card_suit).must_equal :diamonds
    end
  end
end
