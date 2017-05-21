class Cilisting1 < ApplicationRecord

  self.table_name = 'cilisting1'
  default_scope {order('ciid DESC')}

end
