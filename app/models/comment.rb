class Comment < ApplicationRecord
  belongs_to :recipe

  validates :name, :rating, :comment, presence: :true
  validates_length_of :comment, maximum:300
  validates_inclusion_of :rating , in: [0,1,2,3,4,5]
end
