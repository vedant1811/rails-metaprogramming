require 'rails_helper'

RSpec.describe Country, type: :model do
  let!(:india) { Country.create! name: 'India', code: 'IN' }

  it 'should fetch by country code as method call' do
    expect(Country.IN).to eql india
  end

  it 'should raise error for unknown country code' do
    expect { Country.US }.to raise_error(ArgumentError)
  end
end
