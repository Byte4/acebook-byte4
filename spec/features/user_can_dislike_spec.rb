require 'rails_helper'
require 'date'

RSpec.feature "Dislike", type: :feature do

  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post)}

  scenario 'user can visit and dislike posts' do
    visit unauthenticated_root_path
    fill_in_signin_fields
    find("#dislike-#{post.id}").click
    expect(page).to have_css("span#dislikes-counter-#{post.id}", text: '1')

    # expect("#dislikes-counter-#{post.id}").to have_content("1")
  end

  scenario 'clicking twice on dislike will undo the dislike' do
    visit unauthenticated_root_path
    fill_in_signin_fields
    find("#dislike-#{post.id}").click
    find("#dislike-#{post.id}").click
    expect(page).not_to have_css("span#dislikes-counter-#{post.id}", text: '1')

    # expect("#dislikes-counter-#{post.id}").not_to have_content("1")
  end

end
