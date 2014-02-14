module DefaultColumns
	autoload :Schema, 'default_columns/schema'
	autoload :Models, 'default_columns/models'
end
require 'default_columns/active_record'
#require 'default_columns/schema'
#require 'default_columns/models'
require 'default_columns/models/archivable'
