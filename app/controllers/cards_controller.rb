class CardsController < ApplicationController
    def index
      @cards = Card.all
    end
  
    def show
      @card = Card.find(params[:id])
    end
  
    def new
      @card = Card.new
    end
  
    def create
      @card = Card.new(card_params)
      if @card.save
        redirect_to @card, notice: 'Card was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
        redirect_to cards_path
    end
  
    private
  
    def card_params
      params.require(:card).permit(:name, :value, :is_consumable)
    end
  end