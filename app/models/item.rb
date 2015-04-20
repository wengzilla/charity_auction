class Item < ActiveRecord::Base
  monetize :starting_price_cents
end