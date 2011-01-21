class Studentprofile < ActiveRecord::Base
class << self 

def new_with_cast(*a,&b)  

if (h = a.first).is_a? Hash and (type = h[:type] || h['type']) and (klass = type.constantize) != self 

raise "Error!!" unless klass < self  # klass should be a descendant of User  

return klass.new(h, &b)  

end 

new_without_cast(*a, &b)  

end 

alias_method_chain :new, :cast 

end 

end
