class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :email
      t.integer :kind
      t.integer :console_id

      t.timestamps
    end
  end
end
