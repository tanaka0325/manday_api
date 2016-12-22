FactoryGirl.define do
  factory :report do
    user nil
    date "2016-12-21"
    status :published
    body "report test body"
    title "report test title"
  end
end
