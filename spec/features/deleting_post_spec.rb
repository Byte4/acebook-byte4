require 'rails_helper'

feature 'Deleting posts' do
  background do
    user = create :user
    post = create(:post, message: 'Delete post test')

    sign_in_with user
  end

  scenario 'user can delete a post' do
    click_link 'Delete'
    expect(page).to have_content('Your post has been successfully deleted.')
    expect(page).to_not have_content('Delete post test')
  end
end
