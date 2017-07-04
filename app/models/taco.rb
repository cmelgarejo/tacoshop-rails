class Taco < ApplicationRecord
  validates :meat, :inclusion => { :in => %w'steak chicken pork' }
end
