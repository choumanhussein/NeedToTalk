require 'rails_helper'
RSpec.describe 'User registration/login/logout function', type: :system do
  before do
  FactoryBot.create(:user, name: 'bella',
                           email: 'bella@gmail.com',
                           password: 'password',
                           password_confirmation: 'password')

end

          describe 'User registration test' do
          context 'If the user is not logged in' do
          it 'should register new user' do
          visit '/'
          click_on 'Sign up'
          fill_in 'Email', with: 'huss@example.com'
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
          click_on 'Sign up'
          expect(page).to have_content '~LS~'
        end
        it 'should jump to login screen when not logged in' do
     visit blogs_path
     expect(current_path).not_to eq blogs_path
     expect(page).to have_content 'Log in'
   end
   it 'should not be able to access the management screen' do
   visit '/'
   fill_in 'Email', with: 'huss@example.com'
   fill_in 'Password', with: 'password'
   click_button 'Log in'
   visit rails_admin
   expect(page).to_not have_content 'List Of Users'
 end
 it 'should be able to log in and log out' do
   visit '/'
   fill_in 'Email', with: 'bella@gmail.com'
   fill_in 'Password', with: 'password'
   click_button 'Log in'
 expect(page).to have_content '~LS~'
 accept_alert do
     find("#log").click
  end
 expect(page).to have_content 'Log in'
end
 describe "Management screen test" do
    context "If there are no admin users" do
      it "be able to access management page" do
        user = User.create(name: "huss", email: "huss1@gmail.com", password: "12345678", password_confirmation: "12345678", admin: true)
        visit '/'
        fill_in "Email", with: "huss1@gmail.com"
        fill_in "Password", with: "12345678"
        click_button 'Log in'
        visit rails_admin_path
        expect(page).to have_content "Users"
    end
  end
end
 end
end
end
