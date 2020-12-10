class JournalEntriesEmotion < ApplicationRecord
    belongs_to :journal_entry
    belongs_to :emotion
end
