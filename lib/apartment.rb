class Apartment

attr_reader :unit1,
            :unit2

  def initialize(unit)
    need_an_array
    unit =  {:unit1 => {number: "A1", monthly_rent: 1200,
       bathrooms: 1, bedrooms: 1}}
  end

def need_an_array
unit.each do |key, value|
  array << key + "=" + value
end

end
