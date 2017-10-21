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


FactoryGirl.define do
  factory :user do
    nickname { FFaker::Internet.user_name }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
  end
end
