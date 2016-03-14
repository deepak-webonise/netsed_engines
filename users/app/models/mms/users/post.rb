module Mms
  class Users::Post < ActiveRecord::Base
    self.table_name = 'mms_users_posts'
    def self.table_name_prefix
      'mms_users_'
    end

  end
end
