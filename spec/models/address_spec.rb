require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street_number' do
    newton = Address.create(
      street_name: 'street',
      city: 'city',
      state: 'state',
      zip: 12345
    )
  expect(newton.errors[:street_number]).to_not be_empty
  end
  
  it 'is not valid without street_name' do
    newton = Address.create(
      street_number: 123,
      city: 'city',
      state: 'state',
      zip: 12345 
    )
  expect(newton.errors[:street_name]).to_not be_empty 
  end 

  it 'is not valid without city' do
    newton = Address.create(
      street_name: 'street',
      street_number: 123,
      state: 'state',
      zip: 12345
    )
  expect(newton.errors[:city]).to_not be_empty
  end
  
  it 'is not valid without a state' do
    newton = Address.create(
      street_name: 'street',
      street_number: 123,
      city: 'city',
      zip: 12345
    )
  expect(newton.errors[:state]).to_not be_empty
  end
  
  it 'is not valid without a zip' do
    newton = Address.create(
      street_name: 'street',
      street_number: 123,
      city: 'city',
      state: 'state'
    )
  expect(newton.errors[:zip]).to_not be_empty
  end  
end
