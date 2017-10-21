# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string           not null
#  email      :string           not null
#  password   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  has_many :posts
  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, presence: true

end
