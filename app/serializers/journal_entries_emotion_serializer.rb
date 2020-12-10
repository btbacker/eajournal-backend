class JournalEntriesEmotionSerializer < ActiveModel::Serializer
  attributes :id, :journal_entry_id, :integer, :emotion_id, :integer
end
