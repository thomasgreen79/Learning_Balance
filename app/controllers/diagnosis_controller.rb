class DiagnosisController < ApplicationController
  def new
    @diagnosis = Diagnosis.new
  end

  def create
    session[:diagnosis] = Diagnosis.new(diagnosis_params)
    redirect_to show_diagnosis_path 
  end

  def show
    @yin_count = 0
    @yang_count = 0
    @qi_count = 0
    @blood_count = 0
    @heat_count = 0
    @cold_count = 0
    @damp_count = 0
    @qi_stag_count = 0
    @blood_stag_count = 0

    diagnosis = session[:diagnosis]
    if diagnosis["dry_throat"]
      @yin_count += 1
    end
    if diagnosis["insomnia"]
      @yin_count += 1
    end 
    if diagnosis["nervousness"]
      @yin_count += 1
    end 
    if diagnosis["heat_in_palms"]
      @yin_count += 1
    end 
    if diagnosis["tiredness"]
      @yang_count += 1
      @qi_count += 1
      @blood_count += 1
    end 
    if diagnosis["feeling_cold"]
      @yang_count += 1
      @cold_count += 1
    end 
    if diagnosis["desire_for_hot_drinks"]
      @yang_count += 1
      @cold_count += 1
    end 
    if diagnosis["lack_of_motivation"]
      @yang_count += 1
    end 
    if diagnosis["reduced_appetite"]
      @qi_count += 1
    end 
    if diagnosis["shortness_of_breath"]
      @qi_count += 1
    end 
    if diagnosis["weak_voice"]
      @qi_count += 1
    end 
    if diagnosis["slight_sensitive_cold"]
      @qi_count += 1
    end 
    if diagnosis["dizziness_on_standing"]
      @blood_count += 1
    end 
    if diagnosis["blurred_vision"]
      @blood_count += 1
    end 
    if diagnosis["pale_lips"]
      @blood_count += 1
    end 
    if diagnosis["poor_memory"]
      @blood_count += 1
    end 
    if diagnosis["difficulty_getting_to_sleep"]
      @blood_count += 1
    end 
    if diagnosis["sense_of_anxiety"]
      @blood_count += 1
    end 
    if diagnosis["fever"]
      @heat_count += 1
    end 
    if diagnosis["redness"]
      @heat_count += 1
    end 
    if diagnosis["thirst"]
      @heat_count += 1
    end 
    if diagnosis["constipation"]
      @heat_count += 1
    end 
    if diagnosis["heaviness"]
      @damp_count += 1
    end 
    if diagnosis["difficulty_urine"]
      @damp_count += 1
    end 
    if diagnosis["muzzy_head"]
      @damp_count += 1
    end 
    if diagnosis["frustration"]
      @qi_stag_count += 1
    end 
    if diagnosis["depression_and_irritable"]
      @qi_stag_count += 1
    end 
    if diagnosis["moody"]
      @qi_stag_count += 1
    end 
    if diagnosis["sighing"]
      @qi_stag_count += 1
    end 
    if diagnosis["worse_for_stress"]
      @qi_stag_count += 1
    end 
    if diagnosis["acute_stabbing_pain"]
      @blood_stag_count += 1
    end 
    if diagnosis["dark_blood"]
      @blood_stag_count += 1
    end 
    if diagnosis["tongue_pink"]

    end 
    if diagnosis["tongue_thin_white_coating"]
      @qi_count += 1
      @qi_stag_count += 1
    end 
    if diagnosis["tongue_teeth_marks"]
      @qi_count += 1
    end 
    if diagnosis["tongue_pale"]
      @blood_count += 1
      @yang_count += 1
    end 
    if diagnosis["tongue_thin_yellow_coating"]
      @heat_count += 1
    end 
    if diagnosis["tongue_red"]
      @yin_count += 1
      @heat_count += 1
      @damp_count += 1
    end 
    if diagnosis["tongue_white_greasy_coating"]
      @damp_count += 1
    end 
    if diagnosis["tongue_swollen"]
      @damp_count += 1
    end 
    if diagnosis["tongue_purple"]
      @blood_stag_count += 1
      @qi_stag_count += 1
    end 
    if diagnosis["tongue_red_tip"]
      @qi_stag_count += 1
    end 
    if diagnosis["tongue_yellow_greasy_coating"]
      @heat_count += 1
      @damp_count += 1
    end 
    if diagnosis["tongue_thick_white_coating"]
      @yang_count += 1
    end 
    if diagnosis["tongue_no_coating"]
      @blood_count += 1
      @yin_count += 1
    end 
    if diagnosis["tongue_cracks"]
      @yin_count += 1
    end

    @max = -1
    @max_diag = ""
    if @yin_count > @max
      @max = @yin_count
      @max_diag = "Yin Deficiency"
    end
    if @yang_count > @max
      @max = @yang_count
      @max_diag = "Yang Deficiency"
    end
    if @qi_count > @max
      @max = @qi_count
      @max_diag = "Qi Deficiency"
    end
    if @blood_count > @max
      @max = @blood_count
      @max_diag = "Blood Deficiency"
    end
    if @heat_count > @max
      @max = @heat_count
      @max_diag = "Internal Heat"
    end
    if @cold_count > @max
      @max = @cold_count
      @max_diag = "Internal Cold"
    end
    if @damp_count > @max
      @max = @damp_count
      @max_diag = "Internal Damp"
    end
    if @qi_stag_count > @max
      @max = @qi_stag_count
      @max_diag = "Qi Stagnation"
    end
    if @blood_stag_count > @max
      @max = @blood_stag_count
      @max_diag = "Blood Stagnation"
    end
    session.delete(:diagnosis)
  end

  private

    def diagnosis_params
      params.require(:diagnosis).permit(:dry_throat, :insomnia, :nervousness, :heat_in_palms, :tiredness, :feeling_cold, :desire_for_hot_drinks, :lack_of_motivation, :reduced_appetite, :shortness_of_breath, :weak_voice, :slight_sensitive_cold, :dizziness_on_standing, :blurred_vision, :pale_lips, :poor_memory, :difficulty_getting_to_sleep, :sense_of_anxiety, :fever, :redness, :thirst, :constipation, :heaviness, :difficulty_urine, :muzzy_head, :frustration, :depression_and_irritable, :moody, :sighing, :worse_for_stress, :purple_tongue, :acute_stabbing_pain, :dark_blood, :tongue_pink, :tongue_thin_white_coating, :tongue_teeth_marks, :tongue_pale, :tongue_thin_yellow_coating, :tongue_red, :tongue_white_greasy_coating, :tongue_swollen, :tongue_purple, :tongue_red_tip, :tongue_yellow_greasy_coating, :tongue_thick_white_coating, :tongue_no_coating, :tongue_cracks, :yin_count, :yang_count, :qi_count, :blood_count, :heat_count, :damp_count, :qi_stag_count, :blood_stag_count)
    end
end
