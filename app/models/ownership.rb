class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :url
end
