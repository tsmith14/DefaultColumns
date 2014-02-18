module DefaultColumns
  module Models
    module Archivable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		  
		  module ClassMethods
		  	# Add methods for class  
		  
		  	scope :archivable, where(:archived => true)		  	
		  end
	  	
	  	
	  	# Instance Methods
	  	def archived?
	  		archived
	 	  end
	  
	 		
#
#      def hidden?
#        return hiddenrecord_is_row_hidden || false
#      end
#
#      def hide
#        hiddenrecord_is_row_hidden = true
#      end
#
#      def hide!
#        hiddenrecord_is_row_hidden = true
#        save!
#      end
#
#      def unhide
#        hiddenrecord_is_row_hidden = false
#      end
#
#      def unhide!
#        hiddenrecord_is_row_hidden = false
#        save!
#      end

    end
  end
end