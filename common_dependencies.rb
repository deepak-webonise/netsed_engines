source 'https://rubygems.org'
gem 'pg'
# For writing clean mark-up
gem 'haml', '4.0.7'
gem 'haml-rails', '0.9.0'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
group :test, :development do
  gem 'rubocop', require: false
  gem 'pry-byebug'
  gem 'pry'
end
