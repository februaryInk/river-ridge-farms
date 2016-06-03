class Message

  include ActiveModel::Model
  
  EMAIL_REGEX = /(.+)(@)(.+)(\.)(.+)/

  # Text, text, text, text
  attr_accessor :content, :email, :name, :subject
  
  # VALIDATIONS

  validates :content, presence: true, length: { maximum: 2000 }
  validates :email, presence: true, format: { with: EMAIL_REGEX }
  validates :name, presence: true, length: { maximum: 256 }
  validates :subject, length: { maximum: 256 }
end
