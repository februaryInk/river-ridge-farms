source 'https://rubygems.org'

# The essential Ruby on Rails gem.
gem 'rails', '4.2.4'

# Use autoprefixer to add browser-specific CSS prefixes automatically.
gem 'autoprefixer-rails'

# Allows HTML code to be written in HAML, a kind of HTML shorthand.
gem 'haml-rails', '~> 0.9'

# Instates jQuery as the JavaScript library.
gem 'jquery-rails', '4.0.5'

# Enables jQuery UI.
gem 'jquery-ui-rails', '5.0.5'

# PostgreSQL database gem.
gem 'pg', '0.18.2'

# Allows the use of SCSS for style sheets.
gem 'sass-rails', '5.0.3'

# Compresses JavaScript assets.
gem 'uglifier', '2.7.2'

# Provide Windows with the necessary zoneinfo files.
gem 'tzinfo',      { :platforms => [ :x64_mingw, :mingw, :mswin ] }
gem 'tzinfo-data', { :platforms => [ :x64_mingw, :mingw, :mswin ] }

group( :development ) do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console.
  gem 'byebug'
  
  # Load environment variables from .env.
  gem 'dotenv-rails'
  
  # Provides a console on exception pages or when <% console %> is in views.
  gem 'web-console', '2.2.1'
end

group :production do
  # Use Puma as the web server for Heroku.
  gem 'puma'

  # Compile static assets in Heroku with Rails 12 Factor.
  gem 'rails_12factor'
end
