class Post < ApplicationRecord
    belongs_to :user
  belongs_to :location
  belongs_to :flag
  belongs_to :categories
end
