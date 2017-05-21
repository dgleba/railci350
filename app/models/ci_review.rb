class CiReview < ApplicationRecord

  self.table_name = 'cilisting1'
  default_scope {order('ciid DESC')}
  
  def linkmore_web
    a=self.linkmore.sub!(/\\\\CSD-SERVER\\/, "")
    b=a.sub!(/Interdepartment\\/,"data/")
    c=b.gsub!(/\\/,"/")
    return c
  end

  def link_web
    a=self.link.sub!(/\\\\CSD-SERVER\\/, "")
    b=a.sub!(/Interdepartment\\/,"data/")
    c=b.gsub!(/\\/,"/")
    return c
  end

  
end
