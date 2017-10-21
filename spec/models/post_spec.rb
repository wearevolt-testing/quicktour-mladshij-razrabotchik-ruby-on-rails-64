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

require 'rails_helper'

RSpec.describe Post, type: :model do
  user = FactoryGirl.create(:user)
  describe "Validation" do
    it "has valid factory" do
      post = FactoryGirl.create(:post, user: user)
      expect(post).to be_valid
    end
    it "is invalid without title" do
      post = FactoryGirl.build(:post, title: nil)
      expect(post).not_to be_valid 
    end
    it "is invalid without body" do
      post = FactoryGirl.build(:post, body: nil)
    end
  end
end
