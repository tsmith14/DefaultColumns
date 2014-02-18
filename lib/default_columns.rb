module DefaultColumns
	autoload :Schema, 'default_columns/schema'
	autoload :Models, 'default_columns/models'
	
	class Railtie < Rails::Railtie
		config.app_generators do |g|
	  	g.templates.unshift File::expand_path('generators/active_record/migration/templates', __FILE__)
	  end 
	end
	  
end
require 'default_columns/active_record'
#require 'default_columns/generators/active_record'
#require 'default_columns/schema'
#require 'default_columns/models'
require 'default_columns/models/archivable'
require 'default_columns/models/deletable'
