require 'rails_helper'
require 'date'

RSpec.feature "Dislike", type: :feature do

  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post)}

  def fill_in_signin_fields
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'user can visit and dislike posts' do
    visit root_path
    fill_in_signin_fields
    find("#dislike-#{post.id}").click
    expect("#dislikes-counter-#{post.id}").to have_content("1")
  end

  scenario 'clicking twice on dislike will undo the dislike' do
    visit root_path
    fill_in_signin_fields
    find("#dislike-#{post.id}").click
    find("#dislike-#{post.id}").click
    expect("#dislikes-counter-#{post.id}").not_to have_content("1")
  end

end
