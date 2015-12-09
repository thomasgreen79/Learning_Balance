class RecommendationsController < ApplicationController
  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)
    session[:recommendation] = @recommendation
    redirect_to food_recommendation_path
  end

  def show
    recommendation = session[:recommendation]

    dampString = "None"
    phlegmString = "None"
    coldString = "None"
    coolString = "None"
    neutralString = "None"
    warmString = "None"
    hotString = "None"
    allString = "None"
    grainsString = "None"
    vegetablesString = "None"
    fruitsString = "None"
    spicesString = "None"
    oilsString = "None"
    beveragesString = "None"
    supplementsString = "None"
    beansString = "None"
    nutsString = "None"
    fishString = "None"
    meatString = "None"
    dairyString = "None"
    
    if recommendation["heavy"]
      dampString = "%Damp%"
    end
    if recommendation["phlegm"]
      phlegmString = "%Phlegm%"
    end
    if recommendation["wandering_pains"]
      if recommendation["temp"] < 96 
        hotString = "%Hot%"
      end
      if recommendation["temp"] > 48 and recommendation["temp"] < 168
        warmString = "%Warm%"
      end
      if recommendation["temp"] > 120 and recommendation["temp"] < 240
        neutralString = "%Neutral%"
      end
      if recommendation["temp"] > 192 and recommendation["temp"] < 312
        coolString = "%Cool%"
      end
      if recommendation["temp"] > 264
        coldString = "%Cold%"
      end
    end
    if recommendation["foods_all"]
      allString = "%"
    end
    if recommendation["foods_grains"]
      grainsString = "%Grains%"
    end
    if recommendation["foods_vegetables"]
      vegetablesString = "%Vegetables%"
    end
    if recommendation["foods_fruit"]
      fruitsString = "%Fruit%"
    end
    if recommendation["foods_spices"]
      spicesString = "%Herbs & Spices%"
    end
    if recommendation["foods_oils"]
      oilsString = "%Oils & Condiments%"
    end
    if recommendation["foods_beverages"]
      beveragesString = "%Beverages%"
    end
    if recommendation["foods_supplements"]
      supplementsString = "%Supplements%"
    end
    if recommendation["foods_beans"]
      beansString = "%Beans%"
    end
    if recommendation["foods_nuts"]
      nutsString = "%Nuts & Seeds%"
    end
    if recommendation["foods_fish"]
      fishString = "%Fish%"
    end
    if recommendation["foods_meat"]
      meatString = "%Meat%"
    end
    if recommendation["foods_dairy"]
      dairyString = "%Dairy%"
    end

#    if recommendation["wandering_pains"] or recommendation["chills_and_fever"]
#      regulatesString += "Wind%"
#    end
    if recommendation["wandering_pains"]
      foodsTemp = Food.where("temperature LIKE ? OR temperature LIKE ? OR temperature LIKE ? OR temperature LIKE ? OR temperature LIKE ?", hotString, warmString,neutralString, coolString, coldString)
      if recommendation["heavy"] or recommendation["phlegm"]
        foodsReg = foodsTemp.where("regulates LIKE ? OR regulates LIKE ?", dampString, phlegmString)
      else
        foodsReg = foodsTemp
      end
    else
      foodsReg = Food.where("regulates LIKE ? OR regulates LIKE ?", dampString, phlegmString)
    end
    @foods = foodsReg.where("category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? OR category LIKE ? ", allString, grainsString, vegetablesString, fruitsString, spicesString, oilsString, beveragesString, supplementsString, beansString, nutsString, fishString, meatString, dairyString)
    session.delete(:recommendation)
  end

  private

    def recommendation_params
      params.require(:recommendation).permit(:heavy, :phlegm, :temp, :wandering_pains, :chills_and_fever, :foods_all, :foods_grains, :foods_vegetables, :foods_fruit, :foods_spices, :foods_oils, :foods_beverages, :foods_supplements, :foods_beans, :foods_nuts, :foods_fish, :foods_meat, :foods_dairy)
    end

end
