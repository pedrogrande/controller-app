class Shoe < ActiveRecord::Base
  belongs_to :user
  belongs_to :shoe_category
end
