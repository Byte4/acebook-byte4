FactoryBot.define do
  factory :user do
    email  "email@email.com"
    first_name "Maria"
    last_name "Vaccarella"
    password "123456"
    about_me "About me"
    id 1
    avatar Rack::Test::UploadedFile.new(Rails.root + 'spec/images/avatar.jpg', 'image/jpg')
  end
end
