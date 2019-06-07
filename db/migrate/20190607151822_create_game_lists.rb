class CreateGameLists < ActiveRecord::Migration[5.2]
  def change
    create_table :game_lists do |t|
      t.string :title
      t.string :string
      t.string :system
      t.integer :player_count
      t.integer :sessions_count
      t.string :description
      t.date :start_date

      t.timestamps
    end
  end
end
