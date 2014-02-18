module DefaultColumns
  module Models
#    class MissingAttribute < StandardError
#      def initialize(attributes)
#        @attributes = attributes
#      end
#
#      def message
#        "The following attribute(s) is (are) missing on your model: #{@attributes.join(", ")}"
#      end
#    end

#    def self.check_fields!(klass)
#      failed_attributes = []
#      instance = klass.new
#
#      klass.devise_modules.each do |mod|
#        constant = const_get(mod.to_s.classify)
#
#        constant.required_fields(klass).each do |field|
#          failed_attributes << field unless instance.respond_to?(field)
#        end
#      end
#
#      if failed_attributes.any?
#        fail Devise::Models::MissingAttribute.new(failed_attributes)
#      end
#    end

  end
end

require 'models/archivable'
require 'models/deletable'
