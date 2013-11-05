class User < ActiveRecord::Base

  include Authem::User
  attr_accessor :login

  has_many :dumps

  accepts_nested_attributes_for :dumps

  validates :username, :email, presence: true

  def new_dump
    dumps.build
  end

end
