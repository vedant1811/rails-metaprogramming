require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it 'reverse geocodes on save' do
    address = "10.0, 10.0"
    expect(Geocoder).to receive(:search).with([10.0, 10.0]).and_return([address])

    merchant = Merchant.new(company_name: 'name', latitude: 10, longitude: 10)
    merchant.save!
    expect(merchant.address).to eq address
  end
end
