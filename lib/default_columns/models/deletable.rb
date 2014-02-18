module DefaultColumns
  module Models
    module Deletable
      def self.included(base)
        base.class_eval do
          extend ClassMethods
        end
      end
		
	  	def deleted?
	  		deleted
	  	end
	  	
	  	module ClassMethods
	  	end
#      scope :visible, where(:hiddenrecord_is_row_hidden => true)
#
    end
  end
end