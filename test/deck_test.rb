# frozen_string_literal: true

require_relative "test_helper"

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  # 2.  Edge cases

  it "can be instantiated" do
  
    deck = Deck.new
    expect(deck).must_be_instance_of Deck
    expect(deck.cards.length).must_equal 52

  end

  # which removes a Card from the Deck and returns the removed Card
  it "returns the removed Card" do

    deck = Deck.new 

    card = deck.draw

    expect(card).must_be_instance_of Card
  end

  it "removes a Card from the Deck" do 
     deck = Deck.new

     card = deck.draw

     expect(deck.cards.length).must_equal 51
  end

  it "raise error if no more cards"  do
    deck = Deck.new 

    52.times do 
      deck.draw
    end
    expect{deck.draw}.must_raise ArgumentError 
  end

  it "has a shuffle method" do
    deck = Deck.new

    expect(deck).must_respond_to :shuffle
  end

  it "counts deck" do 
    deck = Deck.new

    num_of_cards = deck.count

    expect(num_of_cards).must_equal 52

  end

  it "no more cards to shuffle" do
    deck = Deck.new

    52.times do 
      deck.draw
    end

    expect{deck.shuffle}.must_raise ArgumentError
  end

  it "return a section of the deck" do 

    deck = Deck.new

    cuts_deck = deck.cut

    expect(cuts_deck.length).must_equal 26

  end

end
