class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    if Item.create(item_create_params)
      redirect_to admin_items_path
    end
  end

  private

  def item_create_params
    params.require(:item).permit(:title, :caption, :donor, :starting_price, :photo_url)
  end
end
