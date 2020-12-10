class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.integer :user_id
      t.integer :emotion_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
