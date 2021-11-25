require "./connect_db1.rb"
connect_db!

ActiveRecord::Migration.create_table(:users) do |u|
  u.column :name, :text
  u.column :email, :text
  u.column :password, :text
end
