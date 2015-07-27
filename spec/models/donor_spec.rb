require 'rails_helper'

RSpec.describe Donor, type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:donor).should be_valid
  end

  it "is not valid without a city" do
    FactoryGirl.build(:donor,city: nil).should_not be_valid
  end

  it "is not valid without a name" do
    FactoryGirl.build(:donor,name: nil).should_not be_valid
  end

  it "is not valid without  a phone number" do
    FactoryGirl.build(:donor,phone_number: nil).should_not be_valid
  end

  it "is not valid without a blood type" do
    FactoryGirl.build(:donor,blood_type: nil).should_not be_valid
  end

end
