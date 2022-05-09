require 'rails_helper'
RSpec.describe 'Comment management function', type: :system do
  before do
  user2 =  FactoryBot.create(:user, name: 'bella',
                             email: 'bella@gmail.com',
                             password: 'password',
                             password_confirmation: 'password')
    visit '/'
    fill_in 'Email', with: 'bella@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end
  describe 'New creation function' do
    context 'When creating a new comment' do
      it 'The created comment is displayed' do
        visit new_blog_path
         fill_in "Commenter", with: 'title test'
         click_button 'Poster'
         click_button 'Poster'
        find("#details").click
         fill_in "comment[content]", with: 'title test2'
         click_button 'Poster'
       expect(page).to have_content 'title test2'
      end
    end
  end
  describe 'New creation function' do
    context 'When creating a new comment' do
      it 'Editing The Created Comment' do
        visit new_blog_path
         fill_in "Commenter", with: 'title test'
         click_button 'Poster'
         click_button 'Poster'
        find("#details").click
         fill_in "comment[content]", with: 'title test2'
         click_button 'Poster'
         find("#edit1").click
          fill_in "comment[content]", with: 'title test23'
          click_button 'Poster'
       expect(page).to have_content 'title test23'
      end
    end
  end
  describe 'New creation function' do
    context 'When creating a new comment' do
      it 'Deleting The Created Comment' do
        visit new_blog_path
         fill_in "Commenter", with: 'title test'
         click_button 'Poster'
         click_button 'Poster'
        find("#details").click
         fill_in "comment[content]", with: 'title test2'
         click_button 'Poster'
         accept_alert do
             find("#delete1").click
          end
       expect(page).not_to have_content 'title test2'
      end
    end
  end
end
