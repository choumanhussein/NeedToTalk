require 'factory_bot'
FactoryBot.define do
  factory :user do
    name { 'user1' }
    email { 'huss@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
    admin { false }
  end
end
