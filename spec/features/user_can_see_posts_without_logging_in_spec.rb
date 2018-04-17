require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  scenario 'User can see the posts without logging in' do
    visit unauthenticated_root_path
    click_link "Continue without signing up"
    expect(page).to have_content("Hello, Guest")
  end
end
