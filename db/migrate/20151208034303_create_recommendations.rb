class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.boolean :heavy
      t.boolean :phlegm
      t.integer :temp
      t.boolean :wandering_pains
      t.boolean :chills_and_fever
      t.boolean :foods_all
      t.boolean :foods_grains
      t.boolean :foods_vegetables
      t.boolean :foods_fruit
      t.boolean :foods_spices
      t.boolean :foods_oils
      t.boolean :foods_beverages
      t.boolean :foods_supplements
      t.boolean :foods_beans
      t.boolean :foods_nuts
      t.boolean :foods_fish
      t.boolean :foods_meat
      t.boolean :foods_dairy

      t.timestamps null: false
    end
  end
end
