class CreateConsoles < ActiveRecord::Migration[7.0]
  def change
    create_table :consoles do |t|
      t.integer :kind
      t.string :name
      t.date :purchase_date

      t.timestamps
    end
  end
end
