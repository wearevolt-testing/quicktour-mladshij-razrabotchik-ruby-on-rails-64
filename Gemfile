source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'jsonapi-resources'
gem 'rails_12factor', group: :production
gem 'active_model_serializers'

group :development, :test do
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'ffaker'
  gem 'factory_girl_rails'
  gem 'annotate'
  gem 'listen'
end

group :development do
  gem 'binding_of_caller'
  gem 'pry-rails'
end

ruby "2.4.0"
