class User < ApplicationRecord
  # associations
  has_many :links
  has_many :comments

  # validations
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 8, maximum: 30 }

  # callbacks
  before_save :downcase_email

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
