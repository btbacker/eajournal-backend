class CreateJournalEntriesEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries_emotions do |t|
      t.string :journal_entry_id
      t.string :integer
      t.string :emotion_id
      t.string :integer

      t.timestamps
    end
  end
end
