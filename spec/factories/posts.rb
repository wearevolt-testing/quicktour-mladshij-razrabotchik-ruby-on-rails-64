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

FactoryGirl.define do
  factory :post do
    title { FFaker::Job.title }
    body { FFaker::Lorem.paragraph }
  end
end
