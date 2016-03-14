Mms::Engine.routes.draw do
  namespace :users do
    resources :posts
  end
end
