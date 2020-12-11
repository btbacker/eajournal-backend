class JournalEntry < ApplicationRecord
    belongs_to :user
    has_many :journal_entries_emotions, dependent: :destroy
    has_many :journal_entries_tags, dependent: :destroy
    has_many :emotions, through: :journal_entries_emotions
    has_many :tags, through: :journal_entries_tags
end
