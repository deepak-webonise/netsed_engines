module Mms
  module Users
    # users class
    class User < ActiveRecord::Base
      # Include default devise modules. Others available are:
      # :confirmable, :lockable, :timeoutable and :omniauthable
      devise :database_authenticatable, :registerable,
             :recoverable, :rememberable, :trackable, :validatable
      has_one :profile

      def full_name
        profile &&
          [profile.first_name, profile.middle_name, profile.last_name].join(' ')
      end

      def city
        profile && profile.city
      end
    end
  end
end
