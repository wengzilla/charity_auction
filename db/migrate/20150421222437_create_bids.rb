class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :email, :null => false
      t.string :name
      t.money :price, :null => false
      t.integer :item_id, :null => false

      t.timestamps
    end
  end
end
