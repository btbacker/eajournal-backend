class User < ApplicationRecord
    has_many :journal_entries, dependent: :destroy
    has_many :journal_entries_emotions, through: :journal_entries
    has_many :journal_entries_tags, through: :journal_entries
    has_many :emotions, through: :journal_entries_emotions
    has_many :tags, through: :journal_entries_tags
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    validates :name, uniqueness: { case_sensitive: false }
    validates :name, length: { minimum: 4 }
end
