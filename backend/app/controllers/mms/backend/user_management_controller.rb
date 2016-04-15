module Mms
  module Backend
    # backend dashboard controller
    class UserManagementController < Backend::ApplicationController
      def index
        @users = Users::User.all
      end
    end
  end
end
