# Default Column Model: Archivable
# Example Use:
# 
#		model ModelName
#			include DefaultColumns::Model::Archivable
#			...
#		end
#

module DefaultColumns
  module Models
    module Archivable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		  		  
		  module ClassMethods
		  	## Add methods for class 
		  	
		  	#Usage: Model.archived => (Active_Record::Relation)
		  	def archived
		  		where(:archived => true)
		  	end 
		  	
		  	def unarchived
		  		where(:archived => false)
		  	end
		  	
		  end
	  	
	  	
	  	## Instance Methods
	  	
	  	# Usage: Model.new.archived?  => (true/false)
	  	def archived?
	  		archived
	 	  end
	  
#	 		def archive
#	 			archive = true
#	 			archived_at = Time.now
#	 		end
#	 		
#	 		def archive!
#	 			self.archive
#	 			save!
#	 		end


    end
  end
end