class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :console_id
      t.datetime :checked_out
      t.datetime :returned

      t.timestamps
    end
  end
end
