# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
JournalEntry.destroy_all
JournalEntriesEmotion.destroy_all
JournalEntriesTag.destroy_all
Emotion.destroy_all
Tag.destroy_all

u1=User.create(name: "name1", email: "name1@email.com", password_digest: "pw1")
u2=User.create(name: "name2", email: "name2@email.com", password_digest: "pw2")

je1=JournalEntry.create(entry: "I feel happy today.", user_id: u1.id)
je2=JournalEntry.create(entry: "I feel a general malaise today.", user_id: u2.id)

e1=Emotion.create(name: "happiness", intensity: 10, emotion_type: "positive")
e2=Emotion.create(name: "morose", intensity: 5, emotion_type: "negative")

t1=Tag.create(name: "gaslighting")
t2=Tag.create(name: "namecalling")

JournalEntriesEmotion.create(journal_entry_id: je1.id, emotion_id: e1.id )
JournalEntriesEmotion.create(journal_entry_id: je2.id, emotion_id: e1.id)
JournalEntriesEmotion.create(journal_entry_id: je2.id, emotion_id: e2.id)

JournalEntriesTag.create(journal_entry_id: je1.id, tag_id: t1.id)
JournalEntriesTag.create(journal_entry_id: je1.id, tag_id: t2.id)
JournalEntriesTag.create(journal_entry_id: je2.id, tag_id: t2.id)

puts "EA data seeded."