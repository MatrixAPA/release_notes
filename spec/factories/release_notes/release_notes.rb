FactoryBot.define do
  factory :release_note, class: 'ReleaseNotes::ReleaseNote' do
    title { Faker::TvShows::DumbAndDumber.quote }
    release_date { Faker::Date.between(1.years.ago, Date.today) }
    intro { Faker::Movies::StarWars.quote }
    outro { Faker::TvShows::RickAndMorty.quote }
    published {false}
  end

  trait :published do
    published {true}
  end
end
