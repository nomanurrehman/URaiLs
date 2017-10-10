require 'net/http'

class UrlValidator < ActiveModel::Validator
  def validate(record)
    begin
      url = URI.parse(record.path)
      response = Net::HTTP.get(url)
      true if response.is_a?(Net::HTTPSuccess)   
    rescue StandardError => error
      record.errors.add(:path, :unreachable)
      false
    end  
  end
end