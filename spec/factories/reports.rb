FactoryGirl.define do
  factory :report do
    user nil
    date "2016-12-21"
    status 1
    body "MyText"
    title "MyString"
  end
end
