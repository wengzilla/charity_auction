class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @bid = Bid.new
  end
end