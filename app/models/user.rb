class User < ActiveRecord::Base
  attr_accessible :name, :email, :password
  has_many :appointments
end
