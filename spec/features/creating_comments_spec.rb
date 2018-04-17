require 'rails_helper'

feature "Creating comments" do
  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post, user_id: user.id)}
  let!(:comment) {FactoryBot.create(:comment, post_id: post.id)}

  scenario "User wants to comment on a post"do
    sign_in_with (user)
    visit '/'
    fill_in "Comment", with: comment.content
    click_button "Submit"
    expect(page).to have_css("div#comment-#{comment.id}", text: 'test comment')
  end
end
