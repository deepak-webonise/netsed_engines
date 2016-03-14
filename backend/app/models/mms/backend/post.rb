module Mms
  class Backend::Post < ActiveRecord::Base
    self.table_name = 'mms_backend_posts'
  end
end
