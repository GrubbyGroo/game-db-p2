class GameListSerializer < ActiveModel::Serializer
  attributes :id, :title, :system, :player_count, :sessions_count, :description, :start_date, :editable
  # belongs_to :user

  def editable
    scope == object.user
  end
end
