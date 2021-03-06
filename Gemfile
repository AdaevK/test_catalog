source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'dotenv-rails'
gem 'periscope-activerecord'
gem 'slim-rails'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass'

gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'faker'
  gem 'faker-russian'
  gem 'factory_girl_rails'
  gem 'pry'
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload'

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
  gem 'database_cleaner'

  gem 'capybara'
  gem 'launchy'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
