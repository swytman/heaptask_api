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

class Task < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true

  def telegram_string
    "#{name}: #{start} - #{self.end}"
  end
end
