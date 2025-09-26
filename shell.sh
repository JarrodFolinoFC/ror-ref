alias b='bundle exec'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias r='bundle exec rake'
alias cop='bundle exec rubocop -A'
alias routes='./bin/rails routes'
alias rctest='RAILS_ENV=test ./bin/rails console'
alias rcdev='RAILS_ENV=test ./bin/rails console'



# https://thoughtbot.github.io/factory_bot/
bundle add factory_bot_rails --group development,test
# https://github.com/thoughtbot/shoulda-matchers?tab=readme-ov-file#activemodel-matchers
bundle add shoulda-matchers --group test
# https://github.com/DatabaseCleaner/database_cleaner
bundle add database_cleaner-active_record --group test

# Install all gems
bundle install

# Generate RSpec configuration files
bundle add rspec-rails --group development,test
./bin/rails generate rspec:install

# Generators cheatsheet
bin/rails generate model Product name:string price:integer



################ ERD
bundle add rails-erd --group development
brew install graphviz
sudo apt-get update
sudo apt-get install -y graphviz
bundle exec erd
