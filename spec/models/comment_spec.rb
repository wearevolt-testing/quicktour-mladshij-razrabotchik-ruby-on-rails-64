# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  body         :string           not null
#  post_id      :integer
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = FactoryGirl.create(:user)
  post = FactoryGirl.create(:post, user: user)
  describe "Validation" do
    it "has valid factory" do
      comment = FactoryGirl.create(:comment, post: post, user: user)
      expect(comment).to be_valid
    end
    it "is invalid without body" do
      comment = FactoryGirl.build(:comment, body: nil)
      expect(comment).not_to be_valid
    end
  end
end
