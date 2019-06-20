class AddGameListToSessions < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :game_list, foreign_key: true
  end
end
