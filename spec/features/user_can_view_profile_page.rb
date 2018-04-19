require 'rails_helper'

RSpec.feature "Profile Page", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  scenario 'user can visit profile page' do
    visit unauthenticated_root_path
    sign_in_with(user)
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    find('#profile-1').click
    expect(page).to have_content("Maria Vaccarella")
  end

end
