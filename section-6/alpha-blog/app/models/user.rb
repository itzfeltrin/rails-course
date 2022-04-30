class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z\d]+\.)+[a-z]{2,})\z/i
      record.errors.add attribute, (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  has_many :articles

  validates :username,
            presence: true,
            length: { minimum: 3, maximum: 25 },
            uniqueness: { case_sensitive: false }
  validates :email,
            presence: true,
            email: true,
            length: { maximum: 105 },
            uniqueness: { case_sensitive: false }

  before_save { self.email = email.downcase }
end
