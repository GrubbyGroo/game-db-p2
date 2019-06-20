class SessionSerializer < ActiveModel::Serializer
  attributes :id, :session_num, :session_date, :players, :summary
  belongs_to :game_list
end
