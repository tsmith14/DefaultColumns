require 'rails/generators/active_record/model/model_generator'

#require 'rails/generators/active_record'
#require 'active_record/migration/templates/create_table_migration'
#require 'active_record'

module DefaultColumns
  module ActiveRecord
  	module Generators # :nodoc:
      module Base  # :nodoc:
#      include ActiveRecord::Generators::Migration
      end
    end
  end
end

Rails::Generators::NamedBase.extend DefaultColumns::ActiveRecord::Generators::Base
Rails::Generators::ActiveRecord::Model::ModelGenerator.send :include, DefaultColumns::Generators::ActiveRecord::Model::ModelGenerator



