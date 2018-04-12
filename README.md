<a href="url"><img src="/public/logo.png" align="left" height="48" width="48" ></a> 
# AceBook [![Test Coverage](https://api.codeclimate.com/v1/badges/70ad0217d63f10aac886/test_coverage)](https://codeclimate.com/github/Byte4/acebook-byte4/test_coverage)

AceBook is a social media platform that enables users to share their posts and connect with each other.

## Getting started

Follow the instructions below to download a copy of the project and run it locally for testing and development purposes.

### Technologies used
----
- Back-end
  - [Ruby on Rails][http://rubyonrails.org/]
  - [Devise] [https://github.com/plataformatec/devise]
- Front-end
  - HTML
  - [Bootstrap][https://getbootstrap.com/]
- Testing
  - [RSpec][http://rspec.info/]
  - [Capybara][https://github.com/teamcapybara/capybara]
  - [Selenium WebDriver][https://www.seleniumhq.org/projects/webdriver/]


### Prerequisites

- Verify that a current version of Ruby is installed:
```
ruby -v
```
- Verify that PostgreSQL database is correctly installed on your local machine:
```
psql --version
```
- Verify that a current version of Rails is installed:
```
rails --version
```

### Installing
Follow the instructions below to get both a test and a development environment running
```
git clone https://github.com/Byte4/acebook-byte4.git
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails server # Start the server at localhost:3000
```
In a web browser, visit `localhost:3000` and register to Acebook to start posting messages.


### Some screenshot and description of functionalities?

Coming soon

### Testing

```
rspec # Run the tests to ensure it works
```

### Examples of tests

The great majority of testing involved ensuring a successful implementation of the functionalities (e.g. successful web requests, correct page redirection, successful authentication, views displaying the appropriate messages). Below an example of 'functional test' to ensure a correct user sign up.

```
# User signup
require 'rails_helper'

feature "Signing up" do
  let(:user) {FactoryBot.create(:user)}

  scenario "user visits sign up page" do
    visit new_user_registration_path
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    fill_in 'user[password_confirmation]', with: user.password

    click_button'Sign up'

  end

end
```

## Deployment

Coming soon

## Contributing maybe?

## Authors
[Agnes Donat][https://github.com/agnesdonat], [Ammar Arjomand][https://github.com/Ajibaji], [Irfan Durrani][https://github.com/durranee], [Antonio Ciniglio][https://github.com/antcin]
