class Line < ActiveRecord::Base
	belongs_to :author
 	
 	default_scope { where(active: true)}
	
	before_create do
		@previous = Line.where(chapter: self.chapter, linenumber: self.linenumber)
		@previous.each do |line|
			if(line.perfect)
				return false
			else
				line.active = false
				line.save
			end
		end
	end
end
