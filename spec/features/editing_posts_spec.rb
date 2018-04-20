require 'rails_helper'
require 'date'
feature 'editing posts' do
  background do
    user = create :user
    post = create :post
    sign_in_with user
    click_link 'Edit'
  end

  scenario 'user can edit a post' do
    fill_in 'Message', with: 'replacing test post'
    click_button 'Update post'
    expect(page).to have_content('Post updated.')
    expect(page).to have_content('replacing test post')
  end

  scenario 'Post should show edit time if post has been edited' do
    fill_in 'Message', with: 'replacing test post with another'
    Timecop.freeze(Time.local(1980)) do
      click_button 'Update post'
      expect(page).to have_content("Edited on: #{Time.now.localtime.strftime("%d/%m/%Y at %I:%M%p")}")
    end
  end
end
