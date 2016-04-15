module Mms
  class Users::Profile < ActiveRecord::Base
    self.table_name = 'mms_users_profiles'
    belongs_to :user
  end
end
