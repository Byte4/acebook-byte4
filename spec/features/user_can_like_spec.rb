require 'rails_helper'
require 'date'

RSpec.feature "Like", type: :feature do

  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post)}

  scenario 'user can visit and like posts' do
    visit unauthenticated_root_path
    sign_in_with(user)
    find("#like-#{post.id}").click
    # expect("#likes-counter-#{post.id}").to have_content("1")
    expect(page).to have_css("span#likes-counter-#{post.id}", text: '1')
  end

  scenario 'clicking twice on like button will undo the like' do
    visit unauthenticated_root_path
    sign_in_with(user)
    find("#like-#{post.id}").click
    find("#like-#{post.id}").click
    expect(page).not_to have_css("span#likes-counter-#{post.id}", text: '1')
  end

end
