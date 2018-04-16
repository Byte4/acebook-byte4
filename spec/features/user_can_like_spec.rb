require 'rails_helper'
require 'date'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  def fill_in_signin_fields
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'user can visit and like posts' do
    visit root_path
    fill_in_signin_fields
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"

    click_link('#1')
    expect(page).to have_content("1")
  end
  #
  # scenario 'check to see if date appears on index page' do
  #   visit root_path
  #   fill_in_signin_fields
  #   click_link "New post"
  #   fill_in "Message", with: "Hello, world!"
  #   click_button "Submit"
  #   expect(page).to have_content(Time.now.strftime("%d/%m/%Y at %I:%M%p"))
  # end

end
