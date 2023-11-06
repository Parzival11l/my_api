source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
begin
  gem "rails", "~> 7.0.8"
  gem "pg", "~> 1.1"
  gem "puma", "~> 5.0"
  gem "redis", "~> 4.0"
end

begin
  gem 'bcrypt', '~> 3.1.13'
  gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
  gem "bootsnap", require: false
  gem "image_processing", "~> 1.2"
  gem "rack-cors"
  gem "jwt"
  gem 'dotenv-rails'

  gem "graphql", "~> 2.1"
  gem 'graphiql-rails', '1.4.10', group: :development

  gem 'apollo_upload_server', '2.0.1'
end
group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
