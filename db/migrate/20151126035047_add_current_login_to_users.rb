class AddCurrentLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_login, :Date
  end
end
