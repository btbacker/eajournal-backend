class Emotion < ApplicationRecord
    has_many :journal_entries_emotions, dependent: :destroy
    has_many :journal_entries, through: :journal_entries_emotions
    # has_many :users, through: :journal_entries
end
