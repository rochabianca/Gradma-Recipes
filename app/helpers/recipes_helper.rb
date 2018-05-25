module RecipesHelper
  def calories_formater(recipe)
    if recipe.light?
      content_tag(:strong, "Light (#{recipe.calories} Calories)")
    else 
      content_tag(:strong, "#{recipe.calories} Calories")
    end
  end

  def image(recipe)
    if recipe.poster.blank?
      image_tag('https://jis.gov.jm/media/blank.png')
    else
      image_tag('recipe.poster')
    end
  end
end
