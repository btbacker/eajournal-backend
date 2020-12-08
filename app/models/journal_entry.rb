class JournalEntry < ApplicationRecord
    belongs_to :user
    has_many_and_belongs_to :tag
    has_many_and_belongs_to :emotion
end
