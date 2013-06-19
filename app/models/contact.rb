class Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :landline, :last_name, :mobile, :photo, :twitter
end
