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

class TaskSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :description, :name, :importance, :urgency

  def start
    object.start&.strftime('%Y-%m-%d')
  end

  def end
    object.end&.strftime('%Y-%m-%d')
  end
end
