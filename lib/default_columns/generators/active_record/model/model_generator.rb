module DefaultColumns
	module ActiveRecord
  	module Generators # :nodoc:
    	class ModelGenerator < Base # :nodoc:
      	class_option :archivable,  :type => :boolean
      	class_option :deletable, :type => :boolean
	  	end
  	end
	end
end
