require 'rails_helper'

RSpec.describe Country, type: :model do
  let!(:india) { Country.create! name: 'India', code: 'IN' }

  it 'fetches by country code as method call' do
    expect(Country.IN).to eql india
  end

  it 'raises error for unknown country code' do
    expect { Country.US }.to raise_error(NoMethodError)
  end
end
