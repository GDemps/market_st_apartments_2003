class Building

attr_reader :units


  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renters
    renter_names = @units.map do |unit|
      binding.pry
      if unit.renter != nil

         unit.renter.name
      end
    end
    renter_names.compact
  end

end
