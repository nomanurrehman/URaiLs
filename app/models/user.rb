class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  # validations
  validates_presence_of :first_name, :last_name, :date_of_birth
  validates_length_of :first_name, maximum: 50
  validates_length_of :last_name, maximum: 50
  
  # associations
  has_many :ownerships
  has_many :urls, through: :ownerships

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # override devise email sending
  # to account for localization
  def send_devise_notification(notification, *args)
    I18n.with_locale(I18n.locale) { super(notification, *args) }
  end
end
