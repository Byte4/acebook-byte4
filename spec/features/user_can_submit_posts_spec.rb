require 'rails_helper'
require 'date'

RSpec.feature "Timeline", type: :feature do

  let(:user) {FactoryBot.create(:user)}

  scenario 'user can visit and post new post' do
    visit unauthenticated_root_path
    sign_in_with(user)
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

  scenario 'check to see if date appears on index page' do
    visit unauthenticated_root_path
    sign_in_with(user)
    click_link "New post"
    fill_in "Message", with: "Hello, world!"

    Timecop.freeze(Time.local(1980)) do
      click_button "Submit"
      expect(page).to have_content(Time.now.localtime.strftime("%d/%m/%Y at %I:%M%p"))
    end
  end

end
