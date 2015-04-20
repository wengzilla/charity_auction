class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :caption
      t.string :donor
      t.string :photo_url
      t.money :starting_price

      t.timestamps
    end
  end
end
