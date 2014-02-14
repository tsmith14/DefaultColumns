module DefaultColumns
  # Holds schema definition for hiddenrecord model options.
  module Schema
    
    # Sets the model as having hidable rows
    #
    # == Options
    # * :null - When true, allows the hidden row flag to be null
    # * :default - Used to set default hidden status to true. If not set, default is false (rows are not hidden)
    def archivable(options={})
#      default = options[:default] || false
	  default = false
      apply_default_column_schema :archived, Boolean, :default => default
#      apply_default_column_schema :archived_at, DateTime
    end

#    # Sets the model to record the timestamp when a row was hidden
#    def tracks_hidden_timestamp()
#      apply_hiddenrecord_schema :hiddenrecord_hidden_at, DateTime
#    end
  end
end