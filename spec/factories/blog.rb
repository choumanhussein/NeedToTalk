require 'factory_bot'
FactoryBot.define do
  factory :blog do
     content{'test'}
     user_id{ 3 }
  end
end
