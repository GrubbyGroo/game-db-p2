class GameListSerializer < ActiveModel::Serializer
  attributes :id, :title, :string, :system, :player_count, :sessions_count, :description, :start_date, :editable
  # belongs_to :user

  def editable
    scope == object.user
  end
end
