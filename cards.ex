defmodule Cards do

    def create_deck do
        suits = ["spades","hearts","diamonds","clubs"]
        values = ["ace", "one", "two", "three", "four", "five", "six", "seven", "nine", "ten", "jack", "queen", "king"]

        for suit <- suits, value <- values do
          "#{ value } of #{ suit }"
        end

    end

    def shuffle( deck ) do
        Enum.shuffle( deck )
    end

    def contains?( deck, card ) do
        Enum.member?( deck, card)
    end

    def deal( deck, hand_size ) do
      Enum.split( deck, hand_size )
    end 

    def save( deck, filename ) do 
      binary = :erlang.term_to_binary( deck )
      File.write( filename, binary )
    end
    def load( filename ) do
        { status, binary } = File.read( filename )

        case status do
            :ok -> :erlang.binary_to_term binary
            :error -> "File doesn't exists"    
        end
    end

    def exec( args ) do
        deck = Cards.create_deck
        #shuffle( deck )
        #contains?( deck, args )
        #deal( deck, args)
        #save( deck, args )
        load( args ) 
    end
    
end

IO.inspect Cards.exec( "arquivo_teste" )