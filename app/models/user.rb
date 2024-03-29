# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  #here we making the following attrubutes accessible
  #attr_accessible :name, :email
  
  #validates :name, presence: true
  attr_accessible(:name, :email, :password, :password_confirmation)

  validates(:name, :presence=> true, :length=>{:maximum=> 50} )
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, :presence=> true, :format=> {:with=>valid_email_regex},
            :uniqueness=>{:case_sensitive=> false})
  validates(:password, :length=>{:minimum=>6})
end