require 'rails_helper'

feature "Deleting comments" do
  background do
    user = FactoryBot.create(:user)
    user_two = FactoryBot.create(:user, id: 2, email: 'hello@hello.com', first_name: "John", password: "abcdef" )
    post = FactoryBot.create(:post, user_id: user.id)

    comment = FactoryBot.create(:comment, user_id: user_two.id, post_id: post.id)

    comment_two = FactoryBot.create(:comment, id: 2, post_id: post.id, content: 'This Acebook thingy is amazing')
    sign_in_with user_two
  end

  scenario "user can delete their own comments" do
    visit '/'
    expect(page).to have_content("test comment")
    click_link 'Delete'
    expect(page).to_not have_content("test comment")
  end

  scenario "user cannot delete posts that don't belong to them" do
    visit '/'
    expect(page).to have_content('This Acebook thingy is amazing')
    expect(page).to_not have_css('Delete')
  end
end
