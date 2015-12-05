class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.boolean :sweet
      t.boolean :salty
      t.boolean :pungent
      t.boolean :bitter
      t.boolean :sour
      t.boolean :grain
      t.boolean :meat_bean_dairy_nut
      t.boolean :vegetable_fruit
      t.integer :temperature

      t.timestamps null: false
    end
  end
end
