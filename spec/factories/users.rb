FactoryGirl.define do
  factory :user do
    name "factory girl"
    email "factory@te.st"
    email_confirmation "factory@te.st"
    password_digest "password"
  end
end
