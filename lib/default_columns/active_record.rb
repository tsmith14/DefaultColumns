#require 'orm_adapter/adapters/active_record'

module DefaultColumns
  module Orm
    # This module contains some helpers and handle schema (migrations):
    #
    #   create_table :accounts do |t|
    #     t.archivable
    #   end
    #
    module ActiveRecord
      module Schema
        include DefaultColumns::Schema

        # Tell how to apply schema methods.
        def apply_default_column_schema(name, type, options={})
          column name, type.to_s.downcase.to_sym, options
        end
      end
    end
  end
end

ActiveRecord::Base.extend DefaultColumns::Models
ActiveRecord::ConnectionAdapters::Table.send :include, DefaultColumns::Schema
ActiveRecord::ConnectionAdapters::TableDefinition.send :include, DefaultColumns::Schema