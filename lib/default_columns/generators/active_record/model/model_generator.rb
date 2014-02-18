require 'rails/generators/active_record/model/model_generator'

module DefaultColumns
	module ActiveRecord
  	module Generators # :nodoc:
    	module ModelGenerator # :nodoc:
    	
#    	  source_root File.expand_path("../../migration/templates", __FILE__)
    	   
      	class_option :archivable,  :type => :boolean
      	class_option :deletable, :type => :boolean
	  	end
  	end
	end
end
