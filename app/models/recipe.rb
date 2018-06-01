class Recipe < ApplicationRecord
  validates :name, :stuff, :duration, :prepare_mode, presence:true
  validates_length_of :stuff, maximum: 300
  validates_length_of :prepare_mode, maximum: 600
  validates_numericality_of :calories, greater_than_or_equal_to: 0, presence:true
  validates_format_of :poster, allow_blank: true, with: /\w+\.(gif|jpg|png|jpeg)\z/i, message: "use only gif, jpg, jpeg or png files."

  KIND = %w(Desserts Drinks Snacks Pasta)
  validates_inclusion_of :kind, in: KIND

  def light?
    calories < 100
  end

  def self.created_at
    where('created_at <= ?', Time.now).order('created_at desc')
  end
end
