class Link < ApplicationRecord
  # associations
  has_many :comments
  belongs_to :users
end
