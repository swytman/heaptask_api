# == Schema Information
#
# Table name: tasks
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  start       :datetime
#  end         :datetime
#  importance  :string
#  urgency     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AuthenticationSerializer < ActiveModel::Serializer
  attributes :id, :email, :auth_token

  def auth_token
    JsonWebToken.encode(user_id: object.id)
  end
end
