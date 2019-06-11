class RemoveStringFromGameLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :game_lists, :string, :string
  end
end
