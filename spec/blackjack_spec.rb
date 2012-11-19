require 'spec_helper'


describe BlackJack do
	subject { BlackJack.new }

		its(:players_cards) { should == [] }

		it "should start with a full deck of cards" do
			subject.deck_of_cards.should include(:hearts, :spades, :diamonds, :clubs)
			subject.deck_of_cards[:hearts].size.should == 13
			subject.deck_of_cards[:spades].size.should == 13
			subject.deck_of_cards[:clubs].size.should == 13
			subject.deck_of_cards[:diamonds].size.should == 13
		end

		it "should return the value of the card when given a string" do
			subject.calculate_value("two of hearts").should == 2
		end

		it "should calculate your current hand based on the given cards" do
			first_card = "two of hearts" 
			second_card = "three of clubs"
			subject.my_hand(first_card, second_card).should == 5
		end

		it "should remove the known cards from the deck" do
			first_card = "two of hearts" 
			second_card = "three of clubs"
			dealer_card = "three of diamonds"
			subject.remove_cards(first_card, second_card, dealer_card)
			subject.deck_of_cards[:hearts].size.should == 12
			subject.deck_of_cards[:clubs].size.should == 12
			subject.deck_of_cards[:diamonds].size.should == 12
		end

		xit "should calculate your chance of recieving a ten" do
			@deck_of_cards
			
		end

	
	end



