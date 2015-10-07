require 'rails_helper'

RSpec.describe Donor, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.create(:donor)).to be_valid
  end

  it "is not valid without a city" do
    expect(FactoryGirl.build(:donor,city: nil)).to_not be_valid
  end

  it "is not valid without a name" do
    expect(FactoryGirl.build(:donor,name: nil)).to_not be_valid
  end

  it "is not valid without  a phone number" do
    expect(FactoryGirl.build(:donor,phone_number: nil)).to_not be_valid
  end

  it "is not valid without a blood type" do
    expect(FactoryGirl.build(:donor,blood_type: nil)).to_not be_valid
  end

end
