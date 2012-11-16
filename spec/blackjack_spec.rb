require 'spec_helper'

describe BlackJack do
	subject { BlackJack.new }
	deck_of_cards = {
      :hearts => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :spades => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :clubs => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :diamonds => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11}}


		its(:deck_of_cards) { should == deck_of_cards }

		it "should calculate your current hand based on the given cards" do
			first_card = "two of hearts"
			second_card = "three of clubs"
			my_hand(first_card, second_card).should == 5
		end

		it "should remove the known cards from the deck" do
			subject.remove_cards(cards)
		end

	
	end



