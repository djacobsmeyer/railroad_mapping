class Plant < ActiveRecord::Base
  self.inheritance_column = "foo"

  def input_address
    address = self.city + ", " + self.state
    return address
  end

  geocoded_by :input_address
  after_validation :geocode

end
