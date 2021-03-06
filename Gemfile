source 'https://rubygems.org'

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Use env
gem 'dotenv-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery in Turbolinks
gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# add State in User
# gem "state_machine"
gem 'annotate'
gem 'bootstrap-sass', '2.3.2.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use dummy data for user pagenate
gem 'faker'

# Use pagination
gem 'will_paginate'

# Use bootstrap view pagination
gem 'bootstrap-will_paginate', '0.0.10'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails'

  # Use its(:test){ }
  gem 'rspec-its'

  gem 'spring-commands-rspec'

  gem 'guard-rspec'

  gem 'rdefs'

  gem 'rubocop', require: false
end


group :test do
   gem 'selenium-webdriver'
   gem 'capybara'
   gem 'factory_girl_rails'
   gem 'cucumber-rails', :require => false
   gem 'database_cleaner'
end

group :doc do
  gem 'sdoc', '~> 0.4.0',  require: false
end
