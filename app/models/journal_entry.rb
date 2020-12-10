class JournalEntry < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :tag
    has_and_belongs_to_many :emotion
end
