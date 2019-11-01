defmodule Cards do

  def create_deck do
    ["Ace", "two", "three"]
  end

  def shuffle( deck ) do
    Enum.shuffle( deck )
  end

  def contains?( deck, card ) do
    Enum.member?( deck, card)
  end


  def exec( args ) do
    deck = Cards.create_deck
    #shuffle( deck )
    contains?( deck, args )
  end

end

IO.inspect Cards.exec( "two" )