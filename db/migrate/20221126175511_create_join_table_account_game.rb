class CreateJoinTableAccountGame < ActiveRecord::Migration[7.0]
  def change
    create_join_table :accounts, :games do |t|
      t.index [:account_id, :game_id]
      t.index [:game_id, :account_id]
    end
  end
end
