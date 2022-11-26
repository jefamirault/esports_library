class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :kind
      t.integer :account_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
