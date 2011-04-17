class Film < ActiveRecord::Base
  
  validates :rating, :numericality => {:greater_than => 0, :less_than => 6}
  validates :title, :presence => true
  validates :url, :presence => true, :uniqueness => true
end

# == Schema Information
#
# Table name: films
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  rating     :integer
#

