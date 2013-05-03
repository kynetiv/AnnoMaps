# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  lat        :float
#  lng        :float
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ActiveRecord::Base
require 'addressable/uri'

  belongs_to :user
  has_many :markers
  attr_accessible :lat, :lng, :text, :name, :user_id
  validates :user_id, :lat, :lng, :presence => true

  def self.lat_lng(address)
    url = Addressable::URI.new(
      :scheme => "https",
      :host => "maps.googleapis.com",
      :path => "/maps/api/geocode/json",
      :query_values => {
      :address => address,
      :sensor => "false"
      }).to_s

    puts url

    response = JSON.parse(RestClient.get(url))

    top_result = response["results"][0]
    top_result["geometry"]["location"].values_at("lat", "lng")
  end

end
