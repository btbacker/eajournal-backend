class User < ApplicationRecord
    has_many :journal_entries
    has_many :emotions, through: :journal_entries
    has_many :tags, through: :journal_entries
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, length { minimum: 4 }
end
