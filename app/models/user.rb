class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    validates_presence_of :first_name, :message => 'Please Enter First Name'
  	validates_presence_of :last_name, :message => 'Please Enter Last Name'
  	validates_presence_of :country, :message => 'Please Enter Country Details'

  	validates_length_of :first_name, minimum: 2, maximum: 255
  	validates_length_of :last_name, minimum: 2, maximum: 255

  	validates :first_name, format: { with: /[a-zA-Z]/, message: 'Should contain only Alphabets'}
  	validates :last_name, format: { with: /[a-zA-Z]/, message: 'Should contain only Alphabets'}
  	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Not a valid Email Address' } 
  	validates_numericality_of :age, allow_blank: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 100, message: 'must be between 18 & 100'

end
