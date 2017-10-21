# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  body         :string           not null
#  user_id      :integer
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true

end
