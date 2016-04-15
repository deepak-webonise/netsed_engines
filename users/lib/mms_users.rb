require "mms/users/engine"
require 'rails/all'
module Mms
  module Users
    mattr_accessor :post_form_fields

    def self.post_form_fields
      if @@form_fields.is_a?(Hash)
        @@form_fields
      else
        raise 'From fields must be defined as hash'
      end
    end

    # def self.table_name_prefix
    #   'mms_users_'
    # end
  end
end
