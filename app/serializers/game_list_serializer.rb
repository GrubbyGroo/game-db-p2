class GameListSerializer < ActiveModel::Serializer
  attributes :id, :title, :system, :player_count, :sessions_count, :description, :start_date, :editable
  # belongs_to :user
  has_many :sessions

  def editable
    scope == object.user
  end
end
