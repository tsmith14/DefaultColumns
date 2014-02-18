require 'active_record/migration/templates/create_table_migration'
require 'active_record'

module DefaultColumns
  module ActiveRecord
  	module Generators # :nodoc:
      class Base < Rails::Generators::NamedBase # :nodoc:
#      include ActiveRecord::Generators::Migration
      end
    end
  end
end

Rails::Generators::Base.extend DefaultColumns::ActiveRecord::Generators::Base
Rails::Generators::ActiveRecord::Model::ModelGenerator.send :include, DefaultColumns::Generators::ActiveRecord::Model::ModelGenerator



