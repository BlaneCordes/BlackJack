#this is the program
      puts "What are your cards?: "
      puts "Enter your cards one at a time as follows: two of hearts"
      
      #@current_hand = BlackJack.new
      first_input = gets
      @first_card = first_input.downcase.strip.split(" of ").map { |c| c.to_sym }
      card_value_1 = @deck_of_cards[first_card[1]][first_card[0]]
      
      second_input = gets
      @second_card = second_input.downcase.strip.split(" of ").map { |c| c.to_sym }
      card_value_2 = @deck_of_cards[second_card[1]][second_card[0]]

      my_hand = card_value_1.to_i + card_value_2.to_i
      puts "You have #{my_hand}."

      puts "What is the dealer showing: "

      dealer_card = gets
      @dealers_card = dealer_card.downcase.strip.split(" of ").map { |c| c.to_sym }
      dealer_card_value = @deck_of_cards[dealers_card[1]][dealers_card[0]]

      puts "The Dealer has #{dealer_card_value}, but we are anticipating he has #{dealer_card_value} + 10. 
      The reason we assume this is because 10 is the most common card in a deck of cards."
      
      remove_cards(first_card, second_card, dealers_card)
      number_of_tens(@deck_of_cards)
      number_of_cards(@deck_of_cards)
      odds_of_ten