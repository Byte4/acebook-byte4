require 'rails_helper'
require 'date'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  def fill_in_signin_fields
    find('#navbar-login-div').fill_in 'user[email]', with: user.email
    find('#navbar-login-div').fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end
  scenario 'user can edit first and last name' do
    visit root_path
    fill_in_signin_fields
    click_link "Edit"
    save_and_open_page
    find("#edit-acct-info-sheet").fill_in "user[first_name]", with: "Maria"
    find("#edit-acct-info-sheet").fill_in "user[last_name]", with: "Vitamin"
    find("#edit-acct-info-sheet").fill_in 'user[current_password]', with: user.password
    find("#edit-acct-info-sheet").click_button "Update"
    expect(page).to have_content("Your account has been updated successfully.")
  end

end
