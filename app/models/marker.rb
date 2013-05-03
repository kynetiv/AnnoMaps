# == Schema Information
#
# Table name: markers
#
#  id         :integer          not null, primary key
#  map_id     :integer
#  lat        :float
#  lng        :float
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Marker < ActiveRecord::Base
  belongs_to :map
  attr_accessible :content, :lat, :lng, :map_id
end
