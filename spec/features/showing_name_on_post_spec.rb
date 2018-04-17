require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  def fill_in_signin_fields
    find('#navbar-login-div').fill_in 'user[email]', with: user.email
    find('#navbar-login-div').fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'user can see their first name on top of the post' do
    visit root_path
    fill_in_signin_fields
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content(user.first_name)
  end
end
