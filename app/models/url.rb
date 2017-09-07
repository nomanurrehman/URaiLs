class Url < ApplicationRecord
  # associations
  has_many :ownerships
  has_many :users, through: :ownerships

  # validations
  # path should be present and
  # should be a valid/reachable url
  validates_presence_of :path
  validates_with UrlValidator

  # generates short code for url
  def generate_code
    # calculation for code length
    # (required_length * 3) / 4
    length = (8 * 3) / 4
    # keep generating code
    # if it exists in database already
    begin
      self.code = SecureRandom.urlsafe_base64(length)
    end while Url.exists?(code: self.code)
  end
end
