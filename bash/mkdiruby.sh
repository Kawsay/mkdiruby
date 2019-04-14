#! /bin/bash

# Check arguments
if [ $# -eq 0 ]
then
  echo "No arguments supplied"
  exit 1
fi

# Create rot directory (ARGV1)
mkdir ./$1

# Create ARGV/lib/
mkdir ./$1/lib/

# Create ARGV/Gemfile
cat > ./$1/lib/Gemfile << "CONTENT"
  source "http://rubygems.org"
  ruby "2.5.1"

  gem "rspec"
  gem "rubocop"
  gem "pry"
CONTENT

# Initialize Git repo
git init ./$1

# Create ./ARGV/.env
touch ./$1/.env

# Write ".env" into ./ARGV/.gitignore
echo ".env" > ./$1/.gitignore

# Initialize Rspec
cd ./$1/ && rspec --init && cd ../

# Create ARGV/README.md
cat > ./$1/README.md << CONTENT
  Ruby 2.5.1
  Generated with :green_heart by mkdiruby.sh
CONTENT

# Enjoy !
echo -e "\e[32m Initialization successful ! Enjoy ! :)"

