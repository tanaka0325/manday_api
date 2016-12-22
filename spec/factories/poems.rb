FactoryGirl.define do
  factory :poem do
    user nil
    date "2016-12-21"
    status :published
    body "test"
  end
end
