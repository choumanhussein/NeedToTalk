require 'factory_bot'
FactoryBot.define do
  factory :comment do
     content{'test'}
     blog_id{ 3 }
  end
end
