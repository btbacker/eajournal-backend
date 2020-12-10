class Tag < ApplicationRecord
    has_many :journal_entries_tags
    has_many :journal_entries, through: :journal_entries_tags
    has_many :users, through: :journal_entries
end
