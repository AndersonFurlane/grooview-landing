class Mail < ActiveRecord::Base

  attr_accessible :email, :name

  #validations
  validates_presence_of :email, :name
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
