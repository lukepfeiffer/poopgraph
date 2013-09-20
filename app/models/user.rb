class User < ActiveRecord::Base
  has_many :dumps
  accepts_nested_attributes_for :dumps
end
