module ReleaseNotes
  class ChangeType < ApplicationRecord
    has_many :release_note_items, class_name: 'ReleaseNotes::ReleaseNoteItem'

    validates :name, :icon, presence: true
    validates :priority, presence: true, uniqueness: true
  end
end
