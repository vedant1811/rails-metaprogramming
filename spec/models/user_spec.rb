require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should reverse geocode on save' do
    user = User.new(name: 'name', latitude: 10, longitude: 10)
    user.save!
    expect(user.home_address).to be_present
  end
end
