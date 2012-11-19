require_relative "BlackJack.rb"


      @current_hand = BlackJack.new
      puts "What are your cards?: "
      puts "Enter your cards one at a time as follows: two of hearts"
      
      first_card = gets
      @current_hand.players_cards << first_card
      @current_hand.calculate_value(first_card)
      
      second_card = gets
      @current_hand.players_cards << second_card
      @current_hand.calculate_value(second_card)

      my_hand_value = @current_hand.my_hand(first_card, second_card)
      print "You have #{my_hand_value}.  " 

      puts "What is the dealer showing: "

      dealer_card = gets
      @current_hand.players_cards << dealer_card
      dealer_card_value = @current_hand.calculate_value(dealer_card)

      puts "The Dealer has #{dealer_card_value}, but we are anticipating he has #{dealer_card_value} + 10. 
      The reason we assume this is because 10 is the most common card in a deck of cards."

      current_deck = @current_hand.remove_cards(first_card, second_card, dealer_card)
      
      # puts "Based on the cards we know are no longer in the deck, 
      # you have a #{current_deck.odds_of_ten} chance of getting a ten."
