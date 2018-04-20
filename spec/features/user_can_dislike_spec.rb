require 'rails_helper'
require 'date'

RSpec.feature "Dislike", type: :feature do

  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post)}

  scenario 'user can visit and dislike posts' do
    visit unauthenticated_root_path
    sign_in_with(user)
    find("#dislike-#{post.id}").click
    expect(page).to have_css("span#dislikes-counter-#{post.id}", text: '1')
  end

  scenario 'clicking twice on dislike will undo the dislike' do
    visit unauthenticated_root_path
    sign_in_with(user)
    find("#dislike-#{post.id}").click
    find("#dislike-#{post.id}").click
    expect(page).not_to have_css("span#dislikes-counter-#{post.id}", text: '1')
  end

end
