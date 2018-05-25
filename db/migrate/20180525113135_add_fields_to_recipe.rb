class AddFieldsToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :kind, :string
    add_column :recipes, :portion, :string
    add_column :recipes, :duration, :datetime
    add_column :recipes, :poster, :string
    add_column :recipes, :intro, :string
  end
end
