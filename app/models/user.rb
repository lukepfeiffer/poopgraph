class User < ActiveRecord::Base

  include Authem::User

  has_many :dumps
  accepts_nested_attributes_for :dumps
  validates :username, :email, presence: true

end
