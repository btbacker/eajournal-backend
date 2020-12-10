class JournalEntriesTagSerializer < ActiveModel::Serializer
  attributes :id, :journal_entry_id, :integer, :tag_id, :integer
end
