require 'rails_helper'
require 'date'

RSpec.feature "Editing user details", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  # scenario 'user can edit first and last name' do
  #   visit unauthenticated_root_path
  #   fill_in_signin_fields
  #   click_link "Edit"
  #   find("#edit-acct-info-sheet").fill_in "user[first_name]", with: "Maria"
  #   find("#edit-acct-info-sheet").fill_in "user[last_name]", with: "Vitamin"
  #   find("#edit-acct-info-sheet").fill_in 'user[current_password]', with: user.password
  #
  #   find("#update").click
  #   # expect(current_path).to eq authenticate_root_path
  #   expect(page).to have_content("Your account has been updated successfully.")
  #
  # end

end
