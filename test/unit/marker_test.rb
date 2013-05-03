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

require 'test_helper'

class MarkerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
