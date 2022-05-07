require 'rails_helper'
RSpec.describe 'Blog management function', type: :system do
  before do
  user2 =  FactoryBot.create(:user, name: 'bella',
                             email: 'bella@gmail.com',
                             password: 'password',
                             password_confirmation: 'password')
    visit '/'
    fill_in 'Email', with: 'bella@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    Blog.create!(
      user_id: user2.id,
      content:"Hello There !",
    )
  end
  describe 'New creation function' do
    context 'When creating a new post' do
      it 'The created Post is displayed' do
        visit new_blog_path
         fill_in "Commenter", with: 'title test'
         click_button 'Poster'
       expect(page).to have_content 'title test'
      end
    end
  end
    describe 'Blog screen' do
      context 'You Log In' do
        it 'to the blog list screen' do
          visit '/'
          expect(page).to have_content '© 2022 NeedToTalk'
        end
      end
    end

  describe 'Detailed display function' do
     context 'When transitioned to any Blog details screen' do
       it 'Able To Read Content' do
         visit new_blog_path
          fill_in "Commenter", with: 'title test'
          click_button 'Poster'
        expect(page).to have_content 'title test'
       end
     end
  end
  describe 'Detailed display function' do
     context 'When transitioned to any Blog details screen' do
       it 'Able To Edit Content' do
       visit '/'
          find("#details").click
          find("#edit").click
          fill_in "Commenter", with: 'Hello123'
          click_button 'Poster'
        expect(page).to have_content 'Hello123'
       end
     end
  end
  describe 'Detailed display function' do
     context 'When transitioned to The Blog details screen' do
       it 'Able To Delete Content' do
       visit '/'
       accept_alert do
           find("#delete").click
        end
        expect(page).to have_content '2022 NeedToTalk'
       end
     end
  end
end
