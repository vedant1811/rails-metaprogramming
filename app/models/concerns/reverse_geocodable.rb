module ReverseGeocodable
  extend ActiveSupport::Concern

  included do
    before_save :reverse_geocode
  end

private
  def reverse_geocode
    return unless latitude && longitude && (latitude_changed? || longitude_changed?)

    addresses = Geocoder.search [latitude, longitude]

    self.home_address = addresses.first
  end
end
