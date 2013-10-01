class User < ActiveRecord::Base
  has_many :dumps
  accepts_nested_attributes_for :dumps
  validates :username, presence: true
end
