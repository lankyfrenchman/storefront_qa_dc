class DataPoint < ActiveRecord::Base
  enum inside_condition: [:well_maintainedd, :need_minor_repairs, :need_major_repairs, :unknown]
  enum outside_condition: [:well_maintained, :needs_minor_repairs, :needs_major_repairs]

end
