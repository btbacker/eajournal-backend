class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, length { minimum: 4 }
end
