class Bid < ActiveRecord::Base
  monetize :price_cents
  belongs_to :item
  validates :email, presence: true
  validates :price_cents, presence: true
  validates :item_id, presence: true
  validate :require_highest_price

  def require_highest_price
    highest_bid = item.highest_bid
    if highest_bid && highest_bid.price_cents >= price_cents
      errors.add(:price, "must be higher than the current bid of $#{highest_bid.price}")
    end
  end
end