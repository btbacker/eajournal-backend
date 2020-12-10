class CreateJournalEntriesEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries_emotions do |t|
      t.integer :journal_entry_id
      t.integer :emotion_id

      t.timestamps
    end
  end
end
