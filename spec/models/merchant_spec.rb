require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it 'reverse geocodes on save' do
    merchant = Merchant.new(company_name: 'name', latitude: 10, longitude: 10)
    merchant.save!
    expect(merchant.address).to be_present
  end
end
