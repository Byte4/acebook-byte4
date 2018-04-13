require 'rails_helper'
require 'date'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  def fill_in_signin_fields
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

  scenario 'user can edit first and last name' do
    visit root_path
    fill_in_signin_fields
    click_link "Edit"
    fill_in "user[first_name]", with: "Maria"
    fill_in "user[last_name]", with: "Vitamin"
    fill_in 'user[current_password]', with: user.password
    click_button "Update"
    expect(page).to have_content("Your account has been updated successfully.")
  end

end
