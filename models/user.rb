class User < ActiveRecord::Base
    has_secure_password
    validates :email, format: {with:  /(\w+)@(\w+).(\w{2,})/, message: "Please enter a valid email address"}
    validates :email, uniqueness: true
    validates :password, presence: true

end
