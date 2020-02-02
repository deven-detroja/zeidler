class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

    PASSWORD_FORMAT = /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    ALPHABET_FORMAT = /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/

    validates :email, format: { with: EMAIL_FORMAT, message: 'Please enter valid Email formate' }
    validates :password, format: {with: PASSWORD_FORMAT, message: 'Should contain at least 1 of each (upper case, lower case, number, special char)'}
    validates_presence_of :first_name, message: 'Please Enter First Name'
  	validates_presence_of :last_name, message: 'Please Enter Last Name'
  	validates_presence_of :country, message: 'Please Enter Country Details'
  	validates_length_of :first_name, minimum: 2, maximum: 255
  	validates_length_of :last_name, minimum: 2, maximum: 255
  	validates :first_name, format: { with: ALPHABET_FORMAT, message: 'Should contain only Alphabets'}
    validates :last_name, format: { with: ALPHABET_FORMAT, message: 'Should contain only Alphabets'}
    validates_numericality_of :age, allow_blank: true, less_than_or_equal_to: 100, message: 'must be between 18 & 100'

end
