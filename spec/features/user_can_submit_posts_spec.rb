require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  def fill_in_signin_fields
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'visiting the site to sign in' do
    visit root_path
    fill_in_signin_fields
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

end
