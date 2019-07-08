class CreateReleaseNotesChangeTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :release_notes_change_types do |t|
      t.string :name
      t.string :icon
      t.integer :priority

      t.timestamps
    end
  end
end
