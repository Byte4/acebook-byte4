require 'rails_helper'

feature "Signing up" do
  let(:user) {FactoryBot.create(:user)}

  scenario "user visits sign up page" do
    visit new_user_registration_path
    find('#sign-up-sheet').fill_in 'user[first_name]', with: user.first_name
    find('#sign-up-sheet').fill_in 'user[last_name]', with: user.last_name
    find('#sign-up-sheet').fill_in 'user[about_me]', with: user.about_me
    find('#sign-up-sheet').fill_in 'user[email]', with: user.email
    find('#sign-up-sheet').fill_in 'user[password]', with: user.password
    find('#sign-up-sheet').fill_in 'user[password_confirmation]', with: user.password

    click_button'Sign up'

  end

end
