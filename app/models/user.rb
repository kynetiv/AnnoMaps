# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  encrypted_password :string(255)
#  salt               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :name, :salt
end
