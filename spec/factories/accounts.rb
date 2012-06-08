# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    bank "Bradesco"
    agency "1234-1"
    number "1122345-6"
    funds_cents 9.99
  end
end
