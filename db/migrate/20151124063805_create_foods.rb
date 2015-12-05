class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.string :flavor
      t.string :temperature
      t.string :tonifies
      t.string :regulates
      t.string :route

      t.timestamps null: false
    end
  end
end
