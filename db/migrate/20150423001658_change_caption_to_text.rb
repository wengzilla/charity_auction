class ChangeCaptionToText < ActiveRecord::Migration
  def change
    change_column :items, :caption, :text
  end
end
