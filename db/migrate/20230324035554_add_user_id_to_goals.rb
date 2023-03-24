class AddUserIdToGoals < ActiveRecord::Migration[7.0]
  def change
    add_reference :goals, :user, null: false, foreign_key: { to_table: :users, primary_key: :user_id }
  end
end
