class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :user_id
      t.string :integer
      t.string :emotion_id
      t.string :integer
      t.string :tag_id
      t.string :integer

      t.timestamps
    end
  end
end
