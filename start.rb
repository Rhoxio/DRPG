require 'discordrb'
require 'active_record'
require 'awesome_print'
require 'dotenv'
Dotenv.load

# Establishing DB connection.
ENV['DATABASE_URL'] ||= "postgres://localhost/DRPG?pool=5"
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

# Initializers loads the bot itself from bot.rb
Dir["./initializers/*.rb"].each {|file| require file }

# Loading AR models
Dir["./models/*.rb"].each {|file| require file }

