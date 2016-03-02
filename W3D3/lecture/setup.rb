require 'pry' # incase you want to use binding.pry
require 'active_record'
require_relative 'lib/user'
require_relative 'lib/post'

# Output messages from AR to STDOUT
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts "Establishing connection to database ..."
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'active_record_example',
)
puts "CONNECTED"

puts "Setting up Database (recreating tables) ..."

ActiveRecord::Schema.define do
  drop_table :users if ActiveRecord::Base.connection.table_exists?(:users)
  drop_table :posts if ActiveRecord::Base.connection.table_exists?(:posts)


  create_table :users do |t|
    t.column :name, :string
    t.column :email, :string
    t.column :admin, :boolean
    t.timestamps
  end

  create_table :posts do |table|
    table.references :user
    table.column :title, :string
    table.column :body, :string
    table.column :published, :boolean
    table.timestamps
  end

end

puts "Setup DONE"
