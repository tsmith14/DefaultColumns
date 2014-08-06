module DefaultColumns
  # Holds schema definition for DefaultColumns model options.
  # In migration:
  # 	t.archivable - creates archived boolean column and archived_at datetime column
  module Schema
 
    def archivable(options={})
	  	default = false
      apply_default_column_schema :archived, 'Boolean', :default => default, :null => false
      apply_default_column_schema :archived_at, 'DateTime'
    end
    
    def deletable(options={})
    	default = false
    	apply_default_column_schema :deleted, 'Boolean', :default => default, :null => false
    	apply_default_column_schema :deleted_at, 'DateTime'
    end

  end
end