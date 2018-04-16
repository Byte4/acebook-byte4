require 'rails_helper'

feature "Creating comments" do
  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post, user_id: user.id)}


  scenario "User wants to comment on a post"do
    visit '/'
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button "Log in"
    visit '/'
    save_and_open_page
    fill_in "Comment", with: "test"
    click_button "Submit"
    expect(page).to have_css("div.comments#{post.id}", text: 'test')

  end
end
