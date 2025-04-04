class CardsController < ApplicationController
    before_action :set_cards, only: [:index]
    before_action :randomize_cards, only: [:index]
    before_action :set_card, only: [:use_card]

    def index
        cards_to_get = [3 - session[:battle_field].length, 0].max
        new_cards = session[:deck].first(cards_to_get)
        session[:battle_field] += new_cards
        session[:deck].shift(cards_to_get) if cards_to_get > 0

        @current_cards = session[:battle_field]
    end

    def remove_card
        card_id = params[:id].to_i
        session[:battle_field].delete(card_id)

        redirect_to cards_path
    end

    def use_card
        case @card.card_type
        when "Enemy"
            Rails.logger.info @card.name+" deals "+@card.dmg.to_s
        when "Defense"
            Rails.logger.info "Defense increases "+@card.durability.to_s
        when "Spell"
            session[:battle_field].clear
        else "Weapon"
            Rails.logger.info "Power is now "+@card.dmg.to_s
        end
        remove_card
    end
  
    private

    def set_card
        @card = Card.find(params[:id])
    end

    def set_cards
        @cards = Card.all 
    end

    def randomize_cards
        if(!session[:deck] || session[:deck].length == 0)
            session[:deck] = Card.all.shuffle.map(&:id)
        end
        Card.all.shuffle.map(&:id)
    end
  
    def card_params
      params.require(:card).permit(:name, :dmg, :card_type, :durability, :effect)
    end
  end