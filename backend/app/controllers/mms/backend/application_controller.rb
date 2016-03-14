module Mms
  module Backend
    class ApplicationController < ::BaseController
      protect_from_forgery with: :exception
    end
  end
end
