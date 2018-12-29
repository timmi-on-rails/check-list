# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  checked       :boolean          not null
#  check_list_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :check_list

  validates :name, presence: true
end
