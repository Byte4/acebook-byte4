<img src="/public/logo.png" align="left" height="50" width="50">

# AceBook <a href="https://codeclimate.com/github/Byte4/acebook-byte4/maintainability"><img src="https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability" /></a> <a href="https://codeclimate.com/github/Byte4/acebook-byte4/test_coverage"><img src="https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage" /></a>

AceBook is a social media platform that enables users to create profiles, share, like, dislike and comment on posts. This project was built in 10 days by Team byte4 of the February 2018 cohort at Makers Academy. Read about our blog about the journey [here](https://medium.com/acebook-byte4).

## Technologies used
- Back-end
  - [Ruby on Rails](http://rubyonrails.org/)
  - [Devise](https://github.com/plataformatec/devise)
  - [Paperclip](https://github.com/thoughtbot/paperclip)  
- Front-end
  - HTML
  - CSS
  - [Bootstrap](https://getbootstrap.com/)
  - [jQuery](https://github.com/jquery/jquery)
- Test  
  - [RSpec](http://rspec.info/)
  - [Capybara](https://github.com/teamcapybara/capybara)
  - [Selenium WebDriver](https://www.seleniumhq.org/projects/webdriver/)
  - [Timecop](https://github.com/travisjeffery/timecop)
  - [Factory bot](https://github.com/thoughtbot/factory_bot)
  - [Travis](https://travis-ci.org/)
  - [Codeclimate](https://codeclimate.com/)
- Deployment
  - [Heroku](https://id.heroku.com/login)  



## Getting started
Follow the instructions below to download a copy of the project and run it locally for testing and development purposes.

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


### Screenshots
![Alt text](/Users/agnesdonat/Projects/acebook-byte4/spec/images/Screen Shot 2018-04-20 at 14.06.31.png)
![Alt text](/Users/agnesdonat/Projects/acebook-byte4/spec/images/Screen Shot 2018-04-20 at 14.05.31.png)


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
http://acebook-byte4.herokuapp.com/

## Authors
[Agnes Donat](https://github.com/agnesdonat), [Ammar Arjomand](https://github.com/Ajibaji), [Irfan Durrani](https://github.com/durranee), [Antonio Ciniglio](https://github.com/antcin)
