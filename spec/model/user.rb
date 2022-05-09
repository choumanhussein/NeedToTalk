require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Registration" do
    context "Registration without one attributes " do
      it "Does not pass without email" do
        user = User.new(email: nil, password: "password")
        expect(user).not_to be_valid
      end
      it "Does not pass without password" do
        user = User.new(email: "example@test.co", password: nil)
        expect(user).not_to be_valid
      end
      it "Does not pass with false email" do
        user = User.new(email: "example.co", password: 'password')
        expect(user).not_to be_valid
      end

    end
    context "Ragistrations pass" do
      it "register user with email and password" do
        user = User.new(email: "example@test.co", password: "password")
        expect(user).to be_valid
      end
    end
  end
end
