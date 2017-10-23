class User < ApplicationRecord

  has_many :posts

  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, presence: true

end
