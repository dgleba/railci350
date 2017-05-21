class Leader < ApplicationRecord
  self.table_name = 'leader'
  default_scope {order('fullcommonname ASC')}
end
