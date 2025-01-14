class SellsController < ApplicationController
  def new 
    @sell = Sell.new
  end

   def create 
    @sell = Sell.new sell_params
    if @sell.save
      respond_to do |format|
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

   private 

   def sell_params
      params.require(:sell).permit(:book_id, :quantity, :day)
    end


end
