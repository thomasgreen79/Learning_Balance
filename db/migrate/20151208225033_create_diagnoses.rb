class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.boolean :dry_throat
      t.boolean :insomnia
      t.boolean :nervousness
      t.boolean :heat_in_palms
      t.boolean :tiredness
      t.boolean :feeling_cold
      t.boolean :desire_for_hot_drinks
      t.boolean :lack_of_motivation
      t.boolean :reduced_appetite
      t.boolean :shortness_of_breath
      t.boolean :weak_voice
      t.boolean :slight_sensitive_cold
      t.boolean :dizziness_on_standing
      t.boolean :blurred_vision
      t.boolean :pale_lips
      t.boolean :poor_memory
      t.boolean :difficulty_getting_to_sleep
      t.boolean :sense_of_anxiety
      t.boolean :fever
      t.boolean :redness
      t.boolean :thirst
      t.boolean :constipation
      t.boolean :heaviness
      t.boolean :difficulty_urine
      t.boolean :muzzy_head
      t.boolean :frustration
      t.boolean :depression_and_irritable
      t.boolean :moody
      t.boolean :sighing
      t.boolean :worse_for_stress
      t.boolean :purple_tongue
      t.boolean :acute_stabbing_pain
      t.boolean :dark_blood
      t.boolean :tongue_pink
      t.boolean :tongue_thin_white_coating
      t.boolean :tongue_teeth_marks
      t.boolean :tongue_pale
      t.boolean :tongue_thin_yellow_coating
      t.boolean :tongue_red
      t.boolean :tongue_white_greasy_coating
      t.boolean :tongue_swollen
      t.boolean :tongue_purple
      t.boolean :tongue_red_tip
      t.boolean :tongue_yellow_greasy_coating
      t.boolean :tongue_thick_white_coating
      t.boolean :tongue_no_coating
      t.boolean :tongue_cracks
      t.integer :yin_count
      t.integer :yang_count
      t.integer :qi_count
      t.integer :blood_count
      t.integer :heat_count
      t.integer :damp_count
      t.integer :qi_stag_count
      t.integer :blood_stag_count

      t.timestamps null: false
    end
  end
end
