FactoryGirl.define do
  factory :task do
    user nil
    date "2016-12-21"
    status :not_yet
    body "task test"
    priority :normal
  end
end
