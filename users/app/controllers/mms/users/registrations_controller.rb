module Mms
  module Users
    # registration controller
    class RegistrationsController < Devise::RegistrationsController
      layout :'Mms.common_layout'
      def new
        build_resource({})
        respond_with resource
      end

      def create
        super
      end

      private

      def sign_up_params
        params.require(resource_name).permit(:email, :password)
      end
    end
  end
end
