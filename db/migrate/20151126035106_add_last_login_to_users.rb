class AddLastLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_login, :Date
  end
end
