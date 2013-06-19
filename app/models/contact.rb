class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :landline, :last_name, :mobile, :photo, :twitter

  validates_presence_of :first_name, :last_name, :mobile
  validates :email, presence: true, uniqueness: true,
    format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
