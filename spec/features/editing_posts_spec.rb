require 'rails_helper'

feature 'editing posts' do
  background do
    user = create :user
    post = create :post

    sign_in_with user


    click_link 'Edit Post'
  end

  scenario 'user can edit a post' do
    fill_in 'Message', with: 'replacing test post'

    click_button 'Update post'
    save_and_open_page
    expect(page).to have_content('Post updated')
    expect(page).to have_content('replacing test post')
  end
end
