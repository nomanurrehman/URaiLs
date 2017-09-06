class Url < ApplicationRecord
  # associations
  has_many :ownerships
  has_many :users, through: :ownerships

  # validations
  # path should be present and
  # should be a valid/reachable url
  validates_presence_of :path
  validates_with UrlValidator
end
