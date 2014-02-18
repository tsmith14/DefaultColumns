#require 'rails/generators'
#require 'rails/generators/active_record'
#require 'rails/generators/active_record/model/model_generator'

#require 'default_columns/generators/active_record/model/model_generator'

#require 'rails/generators/active_record'
#require 'active_record/migration/templates/create_table_migration'
#require 'active_record'

module DefaultColumns
  module ActiveRecord
  	module Generators # :nodoc:
      module Base  # :nodoc:
      	include ActiveRecord::Generators::Migration
      end
    end
  end
end

#Rails::Generators::NamedBase.send :include, DefaultColumns::ActiveRecord::Generators::Base
#ActiveRecord::Generators::ModelGenerator.send :include, DefaultColumns::ActiveRecord::Generators::ModelGenerator



