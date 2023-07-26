class Post < ApplicationRecord
    belongs_to :user
  belongs_to :location
  belongs_to :flag
end
