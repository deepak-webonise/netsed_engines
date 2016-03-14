Mms::Engine.routes.draw do
  devise_for :admins, class_name: "Mms::Backend::Admin", module: :devise
  devise_for :users, class_name: "Mms::Users::User", module: :devise, controllers: {
                       registrations: 'mms/users/registrations'

                   }
end
