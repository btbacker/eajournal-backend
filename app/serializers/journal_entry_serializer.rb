class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :integer, :emotion_id, :integer, :tag_id, :integer
end
