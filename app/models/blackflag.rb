class Blackflag < ActiveRecord::Base
#validates_presence_of :EmpID 
#attr_accessible :EmpID,:reload_on
def self.to_csv(options={})
CSV.generate options do |csv|
csv<<column_names
all.each do |blackflag|
csv<<blackflag.attributes.values_at(*column_names)
end
end
end
end
