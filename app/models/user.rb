# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  include TelegramProfile
  has_secure_password

  has_many :tasks, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
