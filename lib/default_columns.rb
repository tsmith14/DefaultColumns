module DefaultColumns
	autoload :Schema, 'default_columns/schema'
	autoload :Models, 'default_columns/models'
	
	class Railtie < Rails::Railtie
		config.app_generators do |g|
	  	g.templates.unshift File::expand_path('../templates', __FILE__)
	  end 
	end
	  
end
require 'default_columns/active_record'
