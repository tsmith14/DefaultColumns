### Default Columns

#### Purpose: 
Allow for standard columns to be added to models (in addition to the normal: updated_at & created_at)

#### Installation:

* Install gem by adding `gem 'default_columns', git: 'git://github.com/tsmith14/DefaultColumns.git'` to your `GemFile` and running `bundle install`.

* When generating a new model (`rails g model MODELNAME ...`) your migration will have the following:

		class CreateMODELNAME < ActiveRecord::Migration
		  def change
		    create_table :model_name do |t|
			    ...		
			    ### Default Column Modules
			    t.archivable
			    t.deletable
			    ...
		    	t.timestamps
		    end
		  end
		end

	
**Note: t.COLUMN_MODULE results in the creation of columns as mapped below.** 

* In your model, include the following modules like so:


		class MODELNAME < ActiveRecord::Base
			# Default Column Modules
			include DefaultColumns::Models::Archivable
			include DefaultColumns::Models::Deletable
			...
		end


* After migrating your database (`rake db:migrate`), you should be good to go!



#### Current Model Add-Ons:

##### Archivable:
	
	#### Columns ###
	archived [Boolean]
	archived_at [DateTime]
	
	### Class Methods ###
	
	## Usage: ModelName.archived => returns ActiveRecord::Relation of instances where Model is archived
	archived
	
	## Usage: ModelName.unarchived => returns ActiveRecord::Relation of instances where Model is not archived
	unarchived
	
	### Instance Methods ###
	
	## Usage: ModelName.new.archived? => returns true if model instance is archived
	archived?

	
##### Deletable:
	
	### Columns ###
	deleted [Boolean]
	deleted_at [DateTime]
	
	### Class Methods ####
	
	## Usage: ModelName.deleted => returns ActiveRecord::Relation of instances where Model is deleted
	deleted
	
	### Instance Methods ###
	
	## Usage: ModelName.new.deleted? => returns true if model instance is deleted
	deleted?
	
	
	
	
#### ToDo:

* Extend model generator so that modules are automatically added to new models that have default columns

* Allow for models to only have certain column modules (i.e. only have deleted or archived or none)
	* This would probably be done via the generator: `rails g model ModelName --archivable --deletable`

* Allow for column modules to be added to an already existing model
	* This would probably be done by overriding `migration.rb` from rails