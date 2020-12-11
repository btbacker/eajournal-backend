class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :entry
      t.integer :user_id

      t.timestamps
    end
  end
end
