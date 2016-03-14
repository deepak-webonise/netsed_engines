module Mms
  module Users
    class RegistrationsController < Devise::RegistrationsController
      def new
        build_resource({})
        resource.build_profile
        respond_with resource
      end

      def create
        super
      end

      private

      def sign_up_params
        params.require(resource_name).permit(
            :email, :password,
            profile_attributes: [
                :prefix, :first_name, :middle_name, :last_name, :address, :phone, :image
            ]
        )
      end
    end
  end
end