source 'https://rubygems.org'

ruby "3.1.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Required...
gem 'sprockets-rails'

# Trying to fix mimemagic issue by explicitly installing rake
gem 'rake'

# Use Puma as the app server
gem 'puma'
# # Use SCSS for stylesheets
# gem 'sass-rails'
# sass-rails is deprecated...
gem 'sassc', '2.4.0'

# Use Twitter Bootstrap library for front-end UI and layout
gem 'bootstrap-sass'

# Use Font Awesome sass gem for adding icons
# Needs sassc
gem 'font-awesome-sass', '6.2.0'

# # Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# # Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# # See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Hirb gem for better console data presentation
gem 'hirb'

# Handling tzinfo error...
gem 'tzinfo-data'

# gem "mimemagic", "0.3.0"
# Use paperclip gem for image uploading
# gem "paperclip", "6.1.0"

# paperclip is no longer supported.  Using a fork instead...
gem "kt-paperclip"

# Use ransack gem for search fields and sorting
gem 'ransack'

# Use breadcrumb_on_rails gem for breadcrumbs...
gem "breadcrumbs_on_rails"

# Use active-admin for admin features...
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'

# Use inherited_resources for active-admin rails 5 support
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'

# Use devise to register users.  Apparently, it needs to be specified for AA to work as of the specified release.
gem 'devise'

# Use bullet to detect potentially inefficient queries
gem 'bullet', group: 'development'

# Use for amazon image storage
gem 'aws-sdk'

# Migrations issues, terminal suggested adding this to avoid polling for changes...
# This is a WINDOWS Gem That don't play well with nix
platforms :mswin do 
  gem "wdm", :group => [:development, :test]
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  #Use the PostgreSQL gem for Heroku production servers
  gem 'pg'
end