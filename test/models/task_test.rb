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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
