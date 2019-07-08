module ReleaseNotes
  class ReleaseNoteItem < ApplicationRecord
    belongs_to :release_note, class_name: 'ReleaseNotes::ReleaseNote'
    belongs_to :change_type, class_name: 'ReleaseNotes::ChangeType'
    # This belongs_to references the user_klass config variable, as set in the main app Release Notes initializer file.
    # This will likely be: /config/initializers/release_notes.rb
    belongs_to :user, class_name: ReleaseNotes.user_klass.to_s, foreign_key: :user_id if ReleaseNotes.user_klass.to_s.constantize.is_a?(Class) rescue false

    validates :change_type, :change_title, :change_details, :user_id, :release_note, :presence => true

    scope :bug_fix, -> {where("change_type_id IN (SELECT id FROM release_notes_change_types WHERE (name = 'Bug Fix'))")}
    scope :new_feature, -> {where("change_type_id IN (SELECT id FROM release_notes_change_types WHERE (name = 'New Feature'))")}
    scope :enhancement, -> {where("change_type_id IN (SELECT id FROM release_notes_change_types WHERE (name = 'Enhancement'))")}

  end
end