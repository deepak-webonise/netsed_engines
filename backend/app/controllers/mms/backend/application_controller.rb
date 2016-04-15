module Mms
  module Backend
    # application controller for super admin
    class ApplicationController < Mms::BaseController
      protect_from_forgery with: :exception
      layout :'Mms.backend_layout'
    end
  end
end
