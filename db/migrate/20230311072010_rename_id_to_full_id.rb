class RenameIdToFullId < ActiveRecord::Migration[7.0]
  def change
    rename_column :architectural_styles, :id, :archstyle_id
    rename_column :brand_and_models, :id, :brandmodels_id
    rename_column :business_categories, :id, :business_id
    rename_column :business_extras, :id, :businessextra_id
    rename_column :car_extras, :id, :carextra_id
    rename_column :car_years, :id, :caryear_id
    rename_column :consoles, :id, :console_id
    rename_column :dreams, :id, :dream_id
    rename_column :entrepreneur_infos, :id, :entrepreneurinfo_id
    rename_column :gamer_extras, :id, :gamesextra_id
    rename_column :goals, :id, :goal_id
    rename_column :house_extras, :id , :housextra_id 
    rename_column :pc_gamers, :id, :pcgamer_id
    rename_column :rooms, :id, :room_id
    rename_column :travel_gamers, :id, :travelgamer_id
    rename_column :travels, :id, :travel_id
    rename_column :users, :id, :user_id
  end
end
