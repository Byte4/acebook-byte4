require 'rails_helper'

feature 'signing in' do
  let(:user) {FactoryBot.create(:user)}

  scenario 'visiting the site to sign in' do
    visit unauthenticated_root_path
    fill_in_signin_fields
    expect(page).to have_content('Signed in successfully')
  end

end
