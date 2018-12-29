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

class CheckList < ApplicationRecord
  has_many :items
  
  validates :title, presence: true
  validates :token, presence: true, uniqueness: true
  
  # will be used for generating the urls in rails path helpers
  def to_param
    token
  end
end
