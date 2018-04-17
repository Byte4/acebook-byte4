require 'rails_helper'
require 'date'

RSpec.feature "Like", type: :feature do

  let!(:user) {FactoryBot.create(:user)}
  let!(:post) {FactoryBot.create(:post)}

  def fill_in_signin_fields
    find('#navbar-login-div').fill_in 'user[email]', with: user.email
    find('#navbar-login-div').fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'user can visit and like posts' do
    visit root_path
    fill_in_signin_fields
    find("#like-#{post.id}").click
    expect("#likes-counter-#{post.id}").to have_content("1")
  end

  scenario 'clicking twice on like button will undo the like' do
    visit root_path
    fill_in_signin_fields
    find("#like-#{post.id}").click
    find("#like-#{post.id}").click
    expect("#likes-counter-#{post.id}").not_to have_content("1")
  end

end
