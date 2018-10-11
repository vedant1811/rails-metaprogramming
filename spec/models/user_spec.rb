require 'rails_helper'

RSpec.describe User, type: :model do

  it 'reverse geocodes on save' do
    address = "10.0, 10.0"
    expect(Geocoder).to receive(:search).with([10.0, 10.0]).and_return([address])

    user = User.new(name: 'name', latitude: 10.0, longitude: 10.0)
    user.save!
    expect(user.home_address).to eq "10.0, 10.0"
  end
end
