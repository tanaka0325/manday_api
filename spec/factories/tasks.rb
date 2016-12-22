FactoryGirl.define do
  factory :task do
    user nil
    date "2016-12-21"
    status 1
    body "MyText"
    priority 1
  end
end
