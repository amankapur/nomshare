class AddDesireToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :desire, :string
  end
end
