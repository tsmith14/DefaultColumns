require 'default_columns/generators/active_record'

module DefaultColumns
	module ActiveRecord
  	module Generators # :nodoc:
    	class ModelGenerator < ActiveRecord::Generators::Base # :nodoc:
    	
    	  source_root File.expand_path("../migration/templates", __FILE__)
    	   
      	class_option :archivable,  :type => :boolean
      	class_option :deletable, :type => :boolean
	  	end
  	end
	end
end
