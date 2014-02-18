module DefaultColumns
  module Models
    module Deletable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		  		   
		  module ClassMethods
		  	# Add methods for class  
		  	def deleted
		  		where(:deleted => true)
		  	end
		  	
		  end		  

		  
		  # Instance Methods
	  	def deleted?
	  		deleted
	  	end

    end
  end
end