require 'rails_helper'
RSpec.describe 'Blog management function', type: :system do
  before do
    FactoryBot.create(:user, name: 'bella',
                             email: 'bella@gmail.com',
                             password: 'password',
                             password_confirmation: 'password')
    visit '/'
    fill_in 'Email', with: 'bella@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
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
       it 'The content of the relevant Blog is displayed' do
         visit new_blog_path
          fill_in "Commenter", with: 'title test'
          click_button 'Poster'
        expect(page).to have_content 'title test'
       end
     end
  end
end
