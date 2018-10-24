module ReverseGeocodable
  extend ActiveSupport::Concern

  included do
    before_save :reverse_geocode
  end

  class_methods do
    def address_field(field)
      @address_field = field.to_s
    end

    def fetch_address_field
      @address_field || raise('address_field was not called')
    end
  end

private
  def reverse_geocode
    return unless latitude && longitude && (latitude_changed? || longitude_changed?)

    addresses = Geocoder.search [latitude, longitude]

    public_send "#{self.class.fetch_address_field}=", addresses.first
  end
end
