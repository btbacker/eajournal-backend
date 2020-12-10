class CreateJournalEntriesTags < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries_tags do |t|
      t.string :journal_entry_id
      t.string :integer
      t.string :tag_id
      t.string :integer

      t.timestamps
    end
  end
end
