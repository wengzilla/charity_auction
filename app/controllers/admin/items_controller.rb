class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    if Item.create(item_params)
      redirect_to admin_items_path
    end
  end

  def edit
    @item = Item.find(params[:id])
    render 'new'
  end

  def update
    @item = Item.find(params[:id])
    if @item && @item.update_attributes(item_params)
      redirect_to admin_items_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item && @item.destroy
      redirect_to admin_items_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :caption, :donor, :starting_price, :photo_url)
  end
end
