module ReleaseNotes
  class ReleaseNote < ApplicationRecord
    has_many :release_note_items, class_name: 'ReleaseNotes::ReleaseNoteItem'

    # This belongs_to references the user_klass config variable, as set in the main app Release Notes initializer file.
    # This will likely be: /config/initializers/release_notes.rb
    belongs_to :user, class_name: ReleaseNotes.user_klass.to_s, foreign_key: :user_id  if ReleaseNotes.user_klass.to_s.constantize.is_a?(Class) rescue false

    accepts_nested_attributes_for :release_note_items, allow_destroy: true, reject_if: :all_blank

    validates :release_date, :title, :user_id, :presence => true

    scope :published, -> {where(published: true)}
    scope :bug_fixes, -> {joins(release_note_items: :change_type).where("release_notes_change_types.name = 'Bug Fix'")}
    scope :new_features, -> {joins(release_note_items: :change_type).where("release_notes_change_types.name = 'New Feature'")}
    scope :enhancements, -> {joins(release_note_items: :change_type).where("release_notes_change_types.name = 'Enhancement'")}
  end
end
