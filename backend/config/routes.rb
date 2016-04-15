Mms::Engine.routes.draw do
  namespace :backend do
    resources :dashboard
    resources :user_management
  end
end
