FactoryGirl.define do
  factory :donor do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.city {Faker::Address.city}
    f.phone_number {Faker::PhoneNumber.cell_phone}
    f.blood_type "A+"
  end

end
