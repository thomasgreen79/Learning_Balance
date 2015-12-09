class ChangeDiagnosedTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :diagnosed, :text, :default => "None"
  end
end
