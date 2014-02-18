module DefaultColumns
  module Models
    module Deletable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		  
		  included do
		  	scope :deleted, where(:deleted => true)
		  end
		   
		  module ClassMethods
		  	# Add methods for class  
		  
		  end		  

		  
		  # Instance Methods
	  	def deleted?
	  		deleted
	  	end

    end
  end
end