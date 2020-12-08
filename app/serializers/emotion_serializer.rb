class EmotionSerializer < ActiveModel::Serializer
  attributes :id, :name, :intensity, :integer, :emotion_type
end
