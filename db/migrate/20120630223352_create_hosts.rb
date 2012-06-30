class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :email
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
