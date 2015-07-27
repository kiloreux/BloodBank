def create_visitor
  @visitor||= {
      name:"tester",
      email:"testuser@something.com",
      phone_number:'000000000'

  }
end

def create_donor
  @donor=FactoryGirl.create(:donor,create_visitor)
end
