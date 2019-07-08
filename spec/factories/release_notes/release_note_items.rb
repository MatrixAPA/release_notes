FactoryBot.define do
  factory :release_note_item, class: 'ReleaseNotes::ReleaseNoteItem' do
    change_title { Faker::Quotes::Shakespeare.hamlet}
    change_details { Faker::ChuckNorris.fact }
  end

  # These specify our record as a change type
  trait :is_new_feature do
    change_type = FactoryBot.build(:change_type, :new_feature)
    change_type_id {change_type.id}
  end

  trait :is_enhancement do
    change_type = FactoryBot.build(:change_type, :enhancement)
    change_type_id {change_type.id}
  end

  trait :is_bug_fix do
    change_type = FactoryBot.build(:change_type, :bug_fix)
    change_type_id {change_type.id}
  end
end
