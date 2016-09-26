FactoryGirl.define do
  factory :user do
    password "12345678"
    secuence(:email){|n| "ddummy_#{n}@factory.com"}

  end
end
