class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
end
