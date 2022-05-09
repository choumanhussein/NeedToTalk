require 'rails_helper'

RSpec.describe Conversation, type: :model do
  describe "Comment validations" do
it "Validation does not pass if sender_id and recipient_id are the same." do
   conversation = Conversation.create(sender_id: 1, recipient_id: 1)
   expect(conversation).not_to be_valid
 end
end
describe "Comment validations" do
it "Validation does pass if sender_id and recipient_id are not the same." do
  @user1 = User.create!(email: "hello123@user.co", password: "password")
  @user2 = User.create!(email: "hello1234@user.co", password: "password")
 conversation = Conversation.create(sender_id:@user1.id, recipient_id:@user2.id)
 expect(conversation).to be_valid
end
end
end
