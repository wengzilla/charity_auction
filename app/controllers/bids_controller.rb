class BidsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    bid = @item.bids.new(bid_params)

    if bid.save
      flash[:success] = "Congratulations, you are the highest bidder!"
      redirect_to item_path(@item)
    else
      flash[:error] = bid.errors.full_messages.join(",")
      redirect_to item_path(@item)
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:price, :email, :item_id)
  end
end