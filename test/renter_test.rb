require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry';

class RenterTest < Minitest::Test

  def test_instance_of_renter
    renter1 = Renter.new("Jessie")
    assert_instance_of Renter, renter1
  end

  def test_name_attribute
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

  def test_apartment_instance
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    binding.pry
    assert_instance_of Apartment, unit1
  end



end
