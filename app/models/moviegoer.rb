class Moviegoer < ApplicationRecord
  has_many :reviews
  def full_name
    "#{self.name} #{self.surname}"
  end

  def self.authenticate(params)
    email = params[:email]
    password = params[:password]
    Moviegoer.find_by_email_and_password email, password
  end
end