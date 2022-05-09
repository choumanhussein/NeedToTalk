require 'factory_bot'
FactoryBot.define do
  factory :favorite do
     user_id{ 3 }
     blog_id{ 4 }
  end
end
