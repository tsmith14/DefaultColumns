### Default Columns

#### Purpose: Allow for standard columns to be added to models (in addition to the normal: updated_at & created_at)

#### Current Model Add-Ons:

##### Archivable:
	* archived [Boolean]
	* archived_at [DateTime]
	
##### Deletable:
	* deleted [Boolean]
	* deleted_at [DateTime]
	
	
#### ToDo:

* Extend model generator so that modules are automatically added to new models that have default columns

* Allow for models to only have certain column modules (i.e. only have deleted or archived or none)
	* This would probably be done via the generator: `rails g model ModelName --archivable --deletable`

* Allow for column modules to be added to an already existing model
	* This would probably be done by overriding `migration.rb` from rails