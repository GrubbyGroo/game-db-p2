class GameListSerializer < ActiveModel::Serializer
  attributes :id, :title, :string, :system, :player_count, :sessions_count, :description, :start_date
  belongs_to :user
end
