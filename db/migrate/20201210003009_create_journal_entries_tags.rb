class CreateJournalEntriesTags < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries_tags do |t|
      t.integer :journal_entry_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
