class Comment < ApplicationRecord
  # associations
  belongs_to :users
  belongs_to :links
end
