class Country < ApplicationRecord
  def self.method_missing(symbol, args = nil)
    country = Country.find_by code: symbol.to_s

    super unless country

    country
  end
end
