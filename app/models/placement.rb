class Placement < ActiveRecord::Base
  # We should add the inverse option to the placement model for each belongs_to call.
  # This gives a little boost when referencing the parent object
  belongs_to :order, inverse_of: :placements
  belongs_to :product, inverse_of: :placements
end
