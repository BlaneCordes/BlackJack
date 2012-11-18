class BlackJack
  attr_accessor :deck_of_cards, :players_cards

    def initialize
      @deck_of_cards = {
      :hearts => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :spades => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :clubs => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11},
      :diamonds => {:two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eight => 8, :nine => 9, :ten => 10, :jack => 10, 
                  :queen => 10, :king => 10, :ace => 11}
      }
      @players_cards = []
    end

    def calculate_value(card)
      first_card = card.downcase.strip.split(" of ").map { |c| c.to_sym }
      card_value_1 = @deck_of_cards[first_card[1]][first_card[0]]
    end

    def my_hand(first_card, second_card)
      value_one = calculate_value(first_card)
      value_two = calculate_value(second_card)
      value_one + value_two
    end

    def remove_cards(cards) #removes cards from deck of cards
      @deck_of_cards[first_card.last].delete(first_card.first)
      @deck_of_cards[second_card[1]].delete(second_card[0])
      @deck_of_cards[dealers_card[1]].delete(dealers_card[0])
    end

    def remove_player_cards
      @first_card = first_input
      @second_card = second_input
      @deck_of_cards.delete(first_input)
      @deck_of_cards.delete(second_input)
    end
    
    def number_of_tens(deck_of_cards)
         q = deck_of_cards[:hearts].select do |k,v|
          v == 10
      end
         x = deck_of_cards[:diamonds].select do |k,v|
          v == 10
      end
         y = deck_of_cards[:spades].select do |k,v|
          v == 10
      end
         z = deck_of_cards[:clubs].select do |k,v|
          v == 10
      end
      number_of_tens = q.count + x.count + y.count + z.count
    end
    
    def number_of_cards(deck_of_cards)
      [deck_of_cards[:hearts].size + deck_of_cards[:spades].size + deck_of_cards[:diamonds].size + deck_of_cards[:clubs].size]
    end
    
    def odds_of_ten
      number_of_tens / number_of_cards
    end
  end

  