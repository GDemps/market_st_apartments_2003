class Apartment

attr_reader :number,
            :monthly_rent,
            :bathrooms,
            :bedrooms,
            :renter

  def initialize(apartment_info)
    @monthly_rent = apartment_info[:monthly_rent]
    @bathrooms = apartment_info[:bathrooms]
    @bedrooms = apartment_info[:bedrooms]
    @renter = apartment_info[:renter]
  end

  def add_renter(new_renter)
    @renter << new_renter
  end

  def renters
    renter_names = @units.map do |unit|
      if unit.renter != nil
         unit.renter.name
      end
    end
    renter_names.compact
  end

end
