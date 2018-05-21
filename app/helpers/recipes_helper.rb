module RecipesHelper
  def calories_formater(recipe)
    if recipe.light?
      content_tag(:strong, "Light (#{recipe.calories} Calories)")
    else 
      content_tag(:strong, "#{recipe.calories} Calories")
    end
  end
end
