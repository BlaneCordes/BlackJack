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

    def remove_cards(first_card, second_card, dealer_card) 
      a = cardstring_to_symbol(first_card)
      remove_from_deck a[1], a[0]
      b = cardstring_to_symbol(second_card)
      remove_from_deck b[1], b[0]
      c = cardstring_to_symbol(dealer_card)
      remove_from_deck c[1], c[0]
    end

    def cardstring_to_symbol(card)
      first_card = card.downcase.strip.split(" of ").map { |c| c.to_sym }
    end

    def remove_from_deck a, b
      @deck_of_cards[a].delete(b)
    end


  end
    

  