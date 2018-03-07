require 'active_record'

ENV['DATABASE_URL'] ||= "postgres://localhost/DRPG?pool=5"
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

ActiveRecord::Schema.define do
  self.verbose = true # or false

  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table(:characters) do |t|
    t.string      :name,       null: false
    t.text        :description, null: false
    t.datetime    :created_at,  null: false
    t.datetime    :updated_at,  null: false
  end
end