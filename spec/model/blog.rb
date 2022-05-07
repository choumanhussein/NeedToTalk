require 'rails_helper'

RSpec.describe Blog, type: :model do

  it 'validation does not pass if the Blog content is empty' do
    blog = Blog.new(user_id: 2 , content: '')
    expect(blog).not_to be_valid
  end

  it 'validation does not pass if the user_id is nil' do
    blog = Blog.new(user_id:'' , content: '222')
    expect(blog).not_to be_valid
  end

  it 'Validations pass if the user_id and content are present' do
    @user = User.create!(email: "hello123@user.co", password: "password")
   @blog = Blog.create!(content: 'Hello', user_id: @user.id)
    blog = Blog.new(user_id: @user.id, content: 'testtest')
    expect(blog).to be_valid
  end
end
