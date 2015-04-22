class Item < ActiveRecord::Base
  monetize :starting_price_cents
  has_many :bids

  def highest_bid
    bids.order("price_cents DESC").first || Bid.new(:email => "", :price => starting_price)
  end
end