class Taco < ApplicationRecord
  validates :meat, :inclusion => { :in => %w'steak chicken pork' }
  def has_all_sides?
    self.salsa && self.rice && self.fries
  end
end
