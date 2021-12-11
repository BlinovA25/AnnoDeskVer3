class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :text
      t.references :user, null: false, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
