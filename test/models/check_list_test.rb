# == Schema Information
#
# Table name: check_lists
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  token      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CheckListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
