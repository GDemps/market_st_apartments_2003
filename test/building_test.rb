require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry';

class BuildingTest < Minitest::Test

  def test_instance_of_building
    building = Building.new
    assert_instance_of Building, building
  end

  def test_units_are_there
    building = Building.new
    assert_equal [], building.units
  end

  def test_unit1_with_apartment
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units
  end

  def test_can_add_units_and_renters
        building = Building.new
        unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
        unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
        building.add_unit(unit1)
        building.add_unit(unit2)
        renter1 = Renter.new("Aurora")
        assert_equal [unit1, unit2], building.units
        unit1.add_renter(renter1)
        assert_equal ["Aurora"], building.add_renters
  end

end
