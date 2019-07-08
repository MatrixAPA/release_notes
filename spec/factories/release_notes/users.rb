module
  ReleaseNotes
  FactoryBot.define do
    factory :user, class: "User" do
      association :role, factory: :role, strategy: :build, class: "Matrix2Role"

      first_name {Faker::Name.first_name}
      last_name {Faker::Name.last_name}
      email {Faker::Internet.email}
      role_id {role.id}
      password {"password"}
      password_confirmation {"password"}
      terms_and_conditions {true}
      confirmed_at {Time.now}
      approved {true}
    end
  end
end