class Merchant < ApplicationRecord
  include ReverseGeocodable

  address_field :address
end
