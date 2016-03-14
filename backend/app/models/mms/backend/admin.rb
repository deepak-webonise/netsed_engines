module Mms
  module Backend
    class Admin < ActiveRecord::Base
      # Include default devise modules. Others available are:
      # :confirmable, :lockable, :timeoutable and :omniauthable
      devise :database_authenticatable,
              :rememberable, :trackable, :validatable
    end
  end
end
