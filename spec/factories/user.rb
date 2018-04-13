FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    first_name { FFaker::Internet.name }
    password { Devise.friendly_token.first(8) }
  end
end
