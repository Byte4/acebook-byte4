FactoryBot.define do
  factory :comment do
    id 1
    content 'test comment'
    user_id 1
    post_id 1
  end
end
