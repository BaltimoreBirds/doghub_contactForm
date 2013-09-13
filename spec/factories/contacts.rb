# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    email "mikeswanson12@msn.com"
    subject "whodunit"
    description "mr Custer"
    first_name "Michael "
    last_name "Swanson"
  end
end
