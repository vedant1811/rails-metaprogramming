class User < ApplicationRecord
  include ReverseGeocodable

  address_field :home_address
end
