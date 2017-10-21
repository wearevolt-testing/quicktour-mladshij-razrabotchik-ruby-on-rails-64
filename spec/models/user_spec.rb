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

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do  
    it "has valid factory" do
      user = FactoryGirl.create(:user)
      expect(user).to be_valid
    end
    it "is invalid without a nickname" do
      user = FactoryGirl.build(:user, nickname: nil)
      expect(user).not_to be_valid
    end
    it "is invalid without a email" do
      user = FactoryGirl.build(:user, email: nil)
      expect(user).not_to be_valid
    end
    it "is invalid without a password" do
      user = FactoryGirl.build(:user, password: nil)
      expect(user).not_to be_valid
    end
  end
end
