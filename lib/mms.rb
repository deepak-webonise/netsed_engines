require 'mms/engine'
require 'devise'
require 'mms_users'
require 'mms_backend'
# Mms engine module and configuration
module Mms
  mattr_accessor :layouts, :site_name

  class << self
    def common_layout
      validate_layout(:common) || 'mms/application'
    end

    def backend_layout
      validate_layout(:backend) || 'mms/backend/application'
    end

    def validate_layout(key)
      return if @@layouts.nil?
      @@layouts.is_a?(Hash) ||
        (raise 'Invalid layout configuration. Please provide Hash')
      @@layouts[key]
    end

    def site_name
      @@site_name || 'Mms'
    end
  end
end
