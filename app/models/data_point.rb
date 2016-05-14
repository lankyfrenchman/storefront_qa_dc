class DataPoint < ActiveRecord::Base
  # enum inside_condition: [:well_maintained, :needs_minor_repairs, :needs_major_repairs]
  enum outside_condition: [:well_maintained, :needs_minor_repairs, :needs_major_repairs]

end
