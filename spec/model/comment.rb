require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "Comment validations" do
    it "Does not pass if blog_id is null" do
      comment = Comment.new(blog_id: nil, content:'hello')
      expect(comment).not_to be_valid
    end
  end
  describe "Comment validations" do
    it "Does pass if blog_id is not null" do
       @user = User.create!(email: "hello123@user.co", password: "password")
      @blog = Blog.create!(content: 'Hello', user_id: @user.id)
      comment = Comment.new(user_id: @user.id, blog_id:@blog.id, content:'hello')
      expect(comment).to be_valid
    end
  end

end
