module DefaultColumns
  module Models
    module Deletable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		  
		  module ClassMethods
		  end
		  
		  scope :deleted, where(:deleted => true)
		  
		  # Instance Methods
	  	def deleted?
	  		deleted
	  	end

    end
  end
end