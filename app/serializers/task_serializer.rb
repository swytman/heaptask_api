class TaskSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :description, :name, :importance, :urgency

  def start
    object.start.strftime('%Y-%m-%d')
  end

  def end
    object.end.strftime('%Y-%m-%d')
  end
end
