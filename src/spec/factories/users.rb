FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Test#{n}" }
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
    activated { true }
    activated_at { Time.zone.now }

    trait :admin do
      admin { true }
    end
  end
end
