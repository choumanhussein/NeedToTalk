require 'rails_helper'
RSpec.describe 'Conversation management function', type: :system do
  before do
    @user1 =  FactoryBot.create(:user, name: 'bella1',
                               email: 'bella1@gmail.com',
                               password: 'password',
                               password_confirmation: 'password')
  @user2 =  FactoryBot.create(:user, name: 'bella',
                             email: 'bella@gmail.com',
                             password: 'password',
                             password_confirmation: 'password')
    visit '/'
    fill_in 'Email', with: 'bella@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    conversation1 = Conversation.create!(
     sender_id: @user1.id,
     recipient_id: @user2.id
    )
  end
  describe 'New message function' do
    context 'Creating a conversation' do
      it 'The created Message is displayed' do
        find(".insta_icon2").click
         fill_in "message[body]", with: 'Hello'
         click_on 'send a message'
       expect(page).to have_content 'Hello'
      end
    end
  end
end
