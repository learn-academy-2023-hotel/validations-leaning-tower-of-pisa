require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    andre = Account.create( 
      password: 'password',
      email: 'andre@andre.com')
    expect(andre.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    andre = Account.create(
      username: 'Andre',
      email: 'andre@andre.com')
    expect(andre.errors[:password]).to_not be_empty 
  end
  
  it 'is not valid without a email' do
    andre = Account.create(
      username: 'Andre',
      password: 'password')
    expect(andre.errors[:email]).to_not be_empty  
  end

  it 'does not allow duplicate usernames' do
    Account.create(
      username: 'Andre',
      email: 'andre@andre.com',
      password: 'password'
    )
    dupe = Account.create(
      username: 'Andre',
      email: 'andre@andre.com',
      password: 'password'
    )
  expect(dupe.errors[:username]).to_not be_empty
  end
  
  it 'does not allow duplicate passwords' do
    Account.create(
      username: 'Andre',
      email: 'andre@andre.com',
      password: 'password'
    )
    dupe2 = Account.create(
      username: 'Andre',
      email: 'andre@andre.com',
      password: 'password'
    )
  expect(dupe2.errors[:password]).to_not be_empty
  end
end
