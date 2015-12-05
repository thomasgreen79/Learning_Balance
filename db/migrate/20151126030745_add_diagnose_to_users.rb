class AddDiagnoseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :diagnosed, :boolean, default: false
  end
end
