class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :session_num
      t.date :session_date
      t.string :players
      t.text :summary

      t.timestamps
    end
  end
end
