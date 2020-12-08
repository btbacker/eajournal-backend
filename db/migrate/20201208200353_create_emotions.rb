class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.string :name
      t.string :intensity
      t.string :integer
      t.string :emotion_type

      t.timestamps
    end
  end
end
